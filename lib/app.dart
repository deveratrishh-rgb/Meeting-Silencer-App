import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'core/constants/app_constants.dart';
import 'core/theme/app_theme.dart';
import 'l10n/app_localizations.dart';
import 'logic/providers/settings_provider.dart';
import 'ui/screens/home_screen.dart';
import 'ui/screens/lock_screen.dart';

class MeetingSilencerApp extends StatelessWidget {
  const MeetingSilencerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsProvider>();

    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // Theme mode is user-selectable in settings (dark, light, system)
      themeMode: settings.flutterThemeMode,
      locale: settings.locale,
      supportedLocales: AppConstants.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const _AppLockGate(),
    );
  }
}


/// Shows the PIN lock screen on launch if app lock is enabled,
/// otherwise goes straight to the home screen.
class _AppLockGate extends StatefulWidget {
  const _AppLockGate();

  @override
  State<_AppLockGate> createState() => _AppLockGateState();
}

class _AppLockGateState extends State<_AppLockGate> {
  bool _unlocked = false;

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsProvider>();
    final locked = settings.appLockEnabled && settings.hasPinSet && !_unlocked;

    if (locked) {
      return LockScreen(onUnlocked: () => setState(() => _unlocked = true));
    }
    return const HomeScreen();
  }
}
