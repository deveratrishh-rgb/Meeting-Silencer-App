// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'Meeting Silencer';

  @override
  String get navSchedules => 'Iskedyul';

  @override
  String get navWorldClock => 'World Clock';

  @override
  String get navSettings => 'Mga Setting';

  @override
  String get addSchedule => 'Magdagdag ng iskedyul';

  @override
  String get noSchedules => 'Walang iskedyul';

  @override
  String get noSchedulesHint => 'Pindutin ang + para magdagdag';

  @override
  String get modeSilent => 'Tahimik';

  @override
  String get modeVibrate => 'Vibrate';

  @override
  String get settingsLanguage => 'Wika';

  @override
  String get settingsDefaultMode => 'Default na mode';

  @override
  String get settingsAlertBefore => 'Alerto bago ang pulong';

  @override
  String minutes(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    return '$countString minuto';
  }

  @override
  String notificationTitle(String title) {
    return 'Paparating na pulong: $title';
  }

  @override
  String get dayMon => 'Lun';

  @override
  String get dayTue => 'Mar';

  @override
  String get dayWed => 'Miy';

  @override
  String get dayThu => 'Huw';

  @override
  String get dayFri => 'Biy';

  @override
  String get daySat => 'Sab';

  @override
  String get daySun => 'Lin';

  @override
  String get restoresAfterMeeting => 'Ibabalik pagkatapos ng pulong';

  @override
  String get deleteSchedule => 'Burahin ang iskedyul?';

  @override
  String deleteConfirm(String title) {
    return 'Alisin ang \"$title\"?';
  }

  @override
  String get cancel => 'Kanselahin';

  @override
  String get delete => 'Burahin';

  @override
  String get save => 'I-save';

  @override
  String get worldClock => 'Orasan ng Mundo';

  @override
  String get time => 'Oras';

  @override
  String get repeatOn => 'Ulitin sa';

  @override
  String get deviceMode => 'Mode ng device sa pulong';

  @override
  String get afterMeeting => 'Pagkatapos ng pulong';

  @override
  String get restoreNormal => 'Ibalik ang normal na mode';

  @override
  String get restoreSubtitle => 'Magpadala ng paalala kapag natapos ang pulong';

  @override
  String get templates => 'MGA TEMPLATE';

  @override
  String get enterTitle => 'Mangyaring maglagay ng pamagat ng pulong';

  @override
  String get selectDay => 'Mangyaring pumili ng kahit isang araw';

  @override
  String get duplicateSchedule => 'Mayroon nang ganitong iskedyul';

  @override
  String get themeDark => 'Madilim';

  @override
  String get themeLight => 'Maliwanag';

  @override
  String get themeAuto => 'Auto';

  @override
  String get settingsAppearance => 'HITSURA';

  @override
  String get settingsPrivacy => 'Privacy at Seguridad';

  @override
  String get privacyDescription =>
      'Ang lahat ng data ay naka-imbak nang lokal sa iyong device.';

  @override
  String get monthJan => 'Ene';

  @override
  String get monthFeb => 'Peb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Abr';

  @override
  String get monthMay => 'May';

  @override
  String get monthJun => 'Hun';

  @override
  String get monthJul => 'Hul';

  @override
  String get monthAug => 'Ago';

  @override
  String get monthSep => 'Set';

  @override
  String get monthOct => 'Okt';

  @override
  String get monthNov => 'Nob';

  @override
  String get monthDec => 'Dis';

  @override
  String get appVersion => 'Meeting Silencer v1.0.0';

  @override
  String get courseLabel => 'ICT107 Mobile App at Web Development';

  @override
  String get templateWork => '9-5 Trabaho';

  @override
  String get templateLecture1h => '1oras na Lecture';

  @override
  String get templateLecture2h => '2oras na Lecture';

  @override
  String get templateStandup => '30min Standup';

  @override
  String get templateEvening => 'Gabi na Klase';

  @override
  String get meetingTitle => 'Pamagat ng pulong';

  @override
  String get meetingTitleHint => 'hal. Araw-araw na Stand-up';

  @override
  String get importSchedules => 'I-import ang mga Iskedyul';

  @override
  String get importSchedulesHint =>
      'I-paste ang JSON para magdagdag ng maraming iskedyul nang sabay';

  @override
  String get importSchedulesPlaceholder =>
      'I-paste ang iyong JSON schedule list dito';

  @override
  String importSuccess(num count) {
    return '$count iskedyul na na-import';
  }

  @override
  String get importError =>
      'Hindi mabasa ang JSON. Pakisuri ang format at subukan ulit.';

  @override
  String get pickFile => 'Pumili ng File';
}
