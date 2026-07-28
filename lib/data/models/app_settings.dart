/// User preferences stored locally.
///
/// Privacy: only non-sensitive preference data is stored here.
/// No personal identifiers, no location data, no analytics.
class AppSettings {
  final String languageCode;    // 'en' or 'fr'
  final String defaultMode;     // 'silent' or 'vibrate'
  final int defaultAlertMinutes;
  final String themeMode; // 'dark', 'light', or 'system'
  final bool appLockEnabled;
  final String? pinHash; // SHA-256 hash only — the raw PIN is never stored

  const AppSettings({
    this.languageCode = 'en',
    this.defaultMode = 'silent',
    this.defaultAlertMinutes = 5,
    this.themeMode = 'dark',
    this.appLockEnabled = false,
    this.pinHash,
  });

  AppSettings copyWith({
    String? languageCode,
    String? defaultMode,
    int? defaultAlertMinutes,
    String? themeMode,
    bool? appLockEnabled,
    String? pinHash,
  }) =>
      AppSettings(
        languageCode: languageCode ?? this.languageCode,
        defaultMode: defaultMode ?? this.defaultMode,
        defaultAlertMinutes: defaultAlertMinutes ?? this.defaultAlertMinutes,
        themeMode: themeMode ?? this.themeMode,
        appLockEnabled: appLockEnabled ?? this.appLockEnabled,
        pinHash: pinHash ?? this.pinHash,
      );

  Map<String, dynamic> toJson() => {
        'languageCode': languageCode,
        'defaultMode': defaultMode,
        'defaultAlertMinutes': defaultAlertMinutes,
        'themeMode': themeMode,
        'appLockEnabled': appLockEnabled,
        'pinHash': pinHash,
      };

  factory AppSettings.fromJson(Map<String, dynamic> json) => AppSettings(
        languageCode: json['languageCode'] as String? ?? 'en',
        defaultMode: json['defaultMode'] as String? ?? 'silent',
        defaultAlertMinutes: json['defaultAlertMinutes'] as int? ?? 5,
        themeMode: json['themeMode'] as String? ?? 'dark',
        appLockEnabled: json['appLockEnabled'] as bool? ?? false,
        pinHash: json['pinHash'] as String?,
      );
}
