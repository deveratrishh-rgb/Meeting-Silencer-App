import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

import '../../data/models/app_settings.dart';
import '../../data/services/storage_service.dart';

/// Manages user preferences and exposes them to the widget tree.
class SettingsProvider extends ChangeNotifier {
  final StorageService _storage;
  late AppSettings _settings;

  SettingsProvider(this._storage) {
    _settings = _storage.loadSettings();
  }

  // ── Getters ───────────────────────────────────────────────────────────────

  AppSettings get settings => _settings;

  /// Locale used by MaterialApp to switch the UI language.
  Locale get locale => Locale(_settings.languageCode);

  String get languageCode => _settings.languageCode;
  String get defaultMode => _settings.defaultMode;
  int get defaultAlertMinutes => _settings.defaultAlertMinutes;
  String get themeMode => _settings.themeMode;
  bool get appLockEnabled => _settings.appLockEnabled;
  bool get hasPinSet => _settings.pinHash != null && _settings.pinHash!.isNotEmpty;

  /// Returns the Flutter ThemeMode based on the stored preference.
  ThemeMode get flutterThemeMode {
    switch (_settings.themeMode) {
      case 'light': return ThemeMode.light;
      case 'system': return ThemeMode.system;
      default: return ThemeMode.dark;
    }
  }

  // ── Setters ───────────────────────────────────────────────────────────────

  Future<void> setLanguage(String code) async {
    _settings = _settings.copyWith(languageCode: code);
    await _save();
    notifyListeners();
  }

  Future<void> setDefaultMode(String mode) async {
    _settings = _settings.copyWith(defaultMode: mode);
    await _save();
    notifyListeners();
  }

  Future<void> setDefaultAlertMinutes(int minutes) async {
    _settings = _settings.copyWith(defaultAlertMinutes: minutes);
    await _save();
    notifyListeners();
  }

  Future<void> setThemeMode(String mode) async {
    _settings = _settings.copyWith(themeMode: mode);
    await _save();
    notifyListeners();
  }

  String _hashPin(String pin) => sha256.convert(utf8.encode(pin)).toString();

  /// Sets a new PIN and enables app lock. Overwrites any existing PIN.
  Future<void> setPin(String pin) async {
    _settings = _settings.copyWith(pinHash: _hashPin(pin), appLockEnabled: true);
    await _save();
    notifyListeners();
  }

  /// Verifies a PIN attempt against the stored hash.
  bool verifyPin(String pin) => _settings.pinHash == _hashPin(pin);

  /// Disables app lock. The PIN hash is kept so re-enabling doesn't
  /// require setting a new PIN, but it can no longer be used to unlock.
  Future<void> disableAppLock() async {
    _settings = _settings.copyWith(appLockEnabled: false);
    await _save();
    notifyListeners();
  }

  /// Re-enables app lock using the previously set PIN.
  Future<void> enableAppLock() async {
    _settings = _settings.copyWith(appLockEnabled: true);
    await _save();
    notifyListeners();
  }

  Future<void> _save() => _storage.saveSettings(_settings);
}
