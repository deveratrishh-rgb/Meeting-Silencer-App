// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'बैठक साइलेन्सर';

  @override
  String get navSchedules => 'तालिका';

  @override
  String get navWorldClock => 'विश्व घडी';

  @override
  String get navSettings => 'सेटिङ';

  @override
  String get addSchedule => 'तालिका थप्नुहोस्';

  @override
  String get noSchedules => 'कुनै तालिका छैन';

  @override
  String get noSchedulesHint => '+ थिचेर पहिलो तालिका थप्नुहोस्';

  @override
  String get modeSilent => 'मौन';

  @override
  String get modeVibrate => 'कम्पन';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsDefaultMode => 'पूर्वनिर्धारित मोड';

  @override
  String get settingsAlertBefore => 'बैठक अघि सूचना';

  @override
  String minutes(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    return '$countString मिनेट';
  }

  @override
  String notificationTitle(String title) {
    return 'आगामी बैठक: $title';
  }

  @override
  String get dayMon => 'सोम';

  @override
  String get dayTue => 'मंग';

  @override
  String get dayWed => 'बुध';

  @override
  String get dayThu => 'बिही';

  @override
  String get dayFri => 'शुक्र';

  @override
  String get daySat => 'शनि';

  @override
  String get daySun => 'आइत';

  @override
  String get restoresAfterMeeting => 'बैठक पछि पुनर्स्थापना';

  @override
  String get deleteSchedule => 'तालिका मेटाउने?';

  @override
  String deleteConfirm(String title) {
    return '\"$title\" हटाउने?';
  }

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get delete => 'मेटाउनुहोस्';

  @override
  String get save => 'सुरक्षित गर्नुहोस्';

  @override
  String get worldClock => 'विश्व घडी';

  @override
  String get time => 'समय';

  @override
  String get repeatOn => 'दोहोर्याउने दिन';

  @override
  String get deviceMode => 'बैठकमा उपकरण मोड';

  @override
  String get afterMeeting => 'बैठक पछि';

  @override
  String get restoreNormal => 'सामान्य मोड पुनर्स्थापना';

  @override
  String get restoreSubtitle => 'बैठक समाप्त भएपछि सम्झना पठाउनुहोस्';

  @override
  String get templates => 'टेम्पलेटहरू';

  @override
  String get enterTitle => 'कृपया बैठकको शीर्षक प्रविष्ट गर्नुहोस्';

  @override
  String get selectDay => 'कृपया कम्तिमा एक दिन चयन गर्नुहोस्';

  @override
  String get duplicateSchedule => 'यो तालिका पहिले नै अवस्थित छ';

  @override
  String get themeDark => 'गाढा';

  @override
  String get themeLight => 'उज्यालो';

  @override
  String get themeAuto => 'स्वचालित';

  @override
  String get settingsAppearance => 'रूप';

  @override
  String get settingsPrivacy => 'गोपनीयता र सुरक्षा';

  @override
  String get privacyDescription =>
      'सबै डेटा तपाईंको उपकरणमा स्थानीय रूपमा भण्डारण गरिन्छ।';

  @override
  String get monthJan => 'जन';

  @override
  String get monthFeb => 'फेब';

  @override
  String get monthMar => 'मार्च';

  @override
  String get monthApr => 'अप्रि';

  @override
  String get monthMay => 'मे';

  @override
  String get monthJun => 'जुन';

  @override
  String get monthJul => 'जुल';

  @override
  String get monthAug => 'अग';

  @override
  String get monthSep => 'सेप';

  @override
  String get monthOct => 'अक्टो';

  @override
  String get monthNov => 'नोभे';

  @override
  String get monthDec => 'डिसे';

  @override
  String get appVersion => 'Meeting Silencer v1.0.0';

  @override
  String get courseLabel => 'ICT107 मोबाइल एप र वेब विकास';

  @override
  String get templateWork => '९-५ काम';

  @override
  String get templateLecture1h => '१ घण्टा कक्षा';

  @override
  String get templateLecture2h => '२ घण्टा कक्षा';

  @override
  String get templateStandup => '३० मिनेट स्ट्यान्डअप';

  @override
  String get templateEvening => 'साँझको कक्षा';

  @override
  String get meetingTitle => 'बैठकको शीर्षक';

  @override
  String get meetingTitleHint => 'जस्तै, दैनिक स्ट्यान्डअप';

  @override
  String get importSchedules => 'तालिका आयात गर्नुहोस्';

  @override
  String get importSchedulesHint => 'एकैचोटि धेरै तालिका थप्न JSON टाँस्नुहोस्';

  @override
  String get importSchedulesPlaceholder =>
      'यहाँ आफ्नो JSON तालिका सूची टाँस्नुहोस्';

  @override
  String importSuccess(num count) {
    return '$count तालिका आयात गरियो';
  }

  @override
  String get importError =>
      'JSON पढ्न सकिएन। ढाँचा जाँच गरेर फेरि प्रयास गर्नुहोस्।';

  @override
  String get pickFile => 'फाइल छान्नुहोस्';

  @override
  String get appLock => 'एप लक';

  @override
  String get appLockHint => 'एप खोल्न PIN आवश्यक पर्ने';

  @override
  String get changePin => 'PIN परिवर्तन गर्नुहोस्';

  @override
  String get setPin => 'PIN सेट गर्नुहोस्';

  @override
  String get enterPin => 'PIN प्रविष्ट गर्नुहोस्';

  @override
  String get newPin => 'नयाँ PIN';

  @override
  String get confirmPin => 'PIN पुष्टि गर्नुहोस्';

  @override
  String get unlock => 'अनलक गर्नुहोस्';

  @override
  String get wrongPin => 'गलत PIN';

  @override
  String get pinLength => 'PIN ४ अंकको हुनुपर्छ';

  @override
  String get pinMismatch => 'PIN मेल खाएन';

  @override
  String get pinSaved => 'PIN सुरक्षित गरियो';
}
