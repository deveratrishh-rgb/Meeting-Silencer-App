// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'मीटिंग साइलेंसर';

  @override
  String get navSchedules => 'अनुसूची';

  @override
  String get navWorldClock => 'विश्व घड़ी';

  @override
  String get navSettings => 'सेटिंग';

  @override
  String get addSchedule => 'अनुसूची जोड़ें';

  @override
  String get noSchedules => 'कोई अनुसूची नहीं';

  @override
  String get noSchedulesHint => '+ दबाएं और पहली अनुसूची जोड़ें';

  @override
  String get modeSilent => 'मौन';

  @override
  String get modeVibrate => 'कंपन';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsDefaultMode => 'डिफ़ॉल्ट मोड';

  @override
  String get settingsAlertBefore => 'मीटिंग से पहले अलर्ट';

  @override
  String minutes(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    return '$countString मिनट';
  }

  @override
  String notificationTitle(String title) {
    return 'आगामी मीटिंग: $title';
  }

  @override
  String get dayMon => 'सोम';

  @override
  String get dayTue => 'मंग';

  @override
  String get dayWed => 'बुध';

  @override
  String get dayThu => 'गुरु';

  @override
  String get dayFri => 'शुक्र';

  @override
  String get daySat => 'शनि';

  @override
  String get daySun => 'रवि';

  @override
  String get restoresAfterMeeting => 'बैठक के बाद पुनर्स्थापित';

  @override
  String get deleteSchedule => 'शेड्यूल हटाएं?';

  @override
  String deleteConfirm(String title) {
    return '\"$title\" हटाएं?';
  }

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get save => 'सहेजें';

  @override
  String get worldClock => 'विश्व घड़ी';

  @override
  String get time => 'समय';

  @override
  String get repeatOn => 'दोहराएं';

  @override
  String get deviceMode => 'बैठक के दौरान डिवाइस मोड';

  @override
  String get afterMeeting => 'बैठक के बाद';

  @override
  String get restoreNormal => 'सामान्य मोड पुनर्स्थापित करें';

  @override
  String get restoreSubtitle => 'बैठक समाप्त होने पर अनुस्मारक भेजें';

  @override
  String get templates => 'टेम्पलेट';

  @override
  String get enterTitle => 'कृपया बैठक का शीर्षक दर्ज करें';

  @override
  String get selectDay => 'कृपया कम से कम एक दिन चुनें';

  @override
  String get duplicateSchedule => 'यह शेड्यूल पहले से मौजूद है';

  @override
  String get themeDark => 'गहरा';

  @override
  String get themeLight => 'हल्का';

  @override
  String get themeAuto => 'स्वचालित';

  @override
  String get settingsAppearance => 'रूप';

  @override
  String get settingsPrivacy => 'गोपनीयता और सुरक्षा';

  @override
  String get privacyDescription =>
      'सभी डेटा आपके डिवाइस पर स्थानीय रूप से संग्रहीत है।';

  @override
  String get monthJan => 'जन';

  @override
  String get monthFeb => 'फर';

  @override
  String get monthMar => 'मार्च';

  @override
  String get monthApr => 'अप्रै';

  @override
  String get monthMay => 'मई';

  @override
  String get monthJun => 'जून';

  @override
  String get monthJul => 'जुल';

  @override
  String get monthAug => 'अग';

  @override
  String get monthSep => 'सित';

  @override
  String get monthOct => 'अक्टू';

  @override
  String get monthNov => 'नव';

  @override
  String get monthDec => 'दिस';

  @override
  String get appVersion => 'Meeting Silencer v1.0.0';

  @override
  String get courseLabel => 'ICT107 मोबाइल ऐप और वेब डेवलपमेंट';

  @override
  String get templateWork => '9-5 काम';

  @override
  String get templateLecture1h => '1घंटा व्याख्यान';

  @override
  String get templateLecture2h => '2घंटा व्याख्यान';

  @override
  String get templateStandup => '30मिनट स्टैंडअप';

  @override
  String get templateEvening => 'शाम की कक्षा';

  @override
  String get meetingTitle => 'बैठक का शीर्षक';

  @override
  String get meetingTitleHint => 'जैसे दैनिक स्टैंडअप';
}
