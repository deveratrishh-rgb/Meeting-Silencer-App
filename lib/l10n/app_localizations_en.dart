// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Meeting Silencer';

  @override
  String get navSchedules => 'Schedules';

  @override
  String get navWorldClock => 'World Clock';

  @override
  String get navSettings => 'Settings';

  @override
  String get addSchedule => 'Add schedule';

  @override
  String get noSchedules => 'No schedules yet';

  @override
  String get noSchedulesHint => 'Tap + to add your first meeting schedule';

  @override
  String get modeSilent => 'Silent';

  @override
  String get modeVibrate => 'Vibrate';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsDefaultMode => 'Default mode';

  @override
  String get settingsAlertBefore => 'Alert before meeting';

  @override
  String minutes(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString minutes',
      one: '$countString minute',
    );
    return '$_temp0';
  }

  @override
  String notificationTitle(String title) {
    return 'Upcoming meeting: $title';
  }

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get daySun => 'Sun';

  @override
  String get restoresAfterMeeting => 'Restores after meeting';

  @override
  String get deleteSchedule => 'Delete schedule?';

  @override
  String deleteConfirm(String title) {
    return 'Remove \"$title\"?';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get save => 'Save';

  @override
  String get worldClock => 'World Clock';

  @override
  String get time => 'Time';

  @override
  String get repeatOn => 'Repeat on';

  @override
  String get deviceMode => 'Device mode during meeting';

  @override
  String get afterMeeting => 'After meeting ends';

  @override
  String get restoreNormal => 'Restore normal mode';

  @override
  String get restoreSubtitle =>
      'Send a reminder when the meeting ends so you can turn sound back on';

  @override
  String get templates => 'TEMPLATES';

  @override
  String get enterTitle => 'Please enter a meeting title';

  @override
  String get selectDay => 'Please select at least one day';

  @override
  String get duplicateSchedule => 'This schedule already exists';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeLight => 'Light';

  @override
  String get themeAuto => 'Auto';

  @override
  String get settingsAppearance => 'APPEARANCE';

  @override
  String get settingsPrivacy => 'Privacy & Security';

  @override
  String get privacyDescription =>
      'All data is stored locally on your device. No personal information is collected, shared or transmitted.';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'May';

  @override
  String get monthJun => 'Jun';

  @override
  String get monthJul => 'Jul';

  @override
  String get monthAug => 'Aug';

  @override
  String get monthSep => 'Sep';

  @override
  String get monthOct => 'Oct';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Dec';

  @override
  String get appVersion => 'Meeting Silencer v1.0.0';

  @override
  String get courseLabel => 'ICT107 Mobile App and Web Development';

  @override
  String get templateWork => '9-5 Work';

  @override
  String get templateLecture1h => '1hr Lecture';

  @override
  String get templateLecture2h => '2hr Lecture';

  @override
  String get templateStandup => '30min Standup';

  @override
  String get templateEvening => 'Evening Class';

  @override
  String get meetingTitle => 'Meeting title';

  @override
  String get meetingTitleHint => 'e.g. Daily Stand-up';

  @override
  String get importSchedules => 'Import Schedules';

  @override
  String get importSchedulesHint =>
      'Paste JSON to add multiple schedules at once';

  @override
  String get importSchedulesPlaceholder => 'Paste your JSON schedule list here';

  @override
  String importSuccess(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imported $count schedules',
      one: 'Imported $count schedule',
    );
    return '$_temp0';
  }

  @override
  String get importError =>
      'Could not read the JSON. Please check the format and try again.';

  @override
  String get pickFile => 'Pick File';

  @override
  String get appLock => 'App Lock';

  @override
  String get appLockHint => 'Require a PIN to open the app';

  @override
  String get changePin => 'Change PIN';

  @override
  String get setPin => 'Set PIN';

  @override
  String get enterPin => 'Enter PIN';

  @override
  String get newPin => 'New PIN';

  @override
  String get confirmPin => 'Confirm PIN';

  @override
  String get unlock => 'Unlock';

  @override
  String get wrongPin => 'Incorrect PIN';

  @override
  String get pinLength => 'PIN must be 4 digits';

  @override
  String get pinMismatch => 'PINs do not match';

  @override
  String get pinSaved => 'PIN saved';
}
