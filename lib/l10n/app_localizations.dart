import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr'),
    Locale('hi'),
    Locale('ne'),
    Locale('tl'),
    Locale('zh')
  ];

  /// App name
  ///
  /// In en, this message translates to:
  /// **'Meeting Silencer'**
  String get appTitle;

  /// Bottom nav: schedules tab
  ///
  /// In en, this message translates to:
  /// **'Schedules'**
  String get navSchedules;

  /// Bottom nav: world clock tab
  ///
  /// In en, this message translates to:
  /// **'World Clock'**
  String get navWorldClock;

  /// Bottom nav: settings tab
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// FAB tooltip and form title
  ///
  /// In en, this message translates to:
  /// **'Add schedule'**
  String get addSchedule;

  /// Empty state heading
  ///
  /// In en, this message translates to:
  /// **'No schedules yet'**
  String get noSchedules;

  /// Empty state sub-text
  ///
  /// In en, this message translates to:
  /// **'Tap + to add your first meeting schedule'**
  String get noSchedulesHint;

  /// Silent mode label
  ///
  /// In en, this message translates to:
  /// **'Silent'**
  String get modeSilent;

  /// Vibrate mode label
  ///
  /// In en, this message translates to:
  /// **'Vibrate'**
  String get modeVibrate;

  /// Language setting label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// Default mode setting label
  ///
  /// In en, this message translates to:
  /// **'Default mode'**
  String get settingsDefaultMode;

  /// Alert timing label
  ///
  /// In en, this message translates to:
  /// **'Alert before meeting'**
  String get settingsAlertBefore;

  /// Minutes count with plural support
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} minute} other{{count} minutes}}'**
  String minutes(num count);

  /// Pre-meeting notification title
  ///
  /// In en, this message translates to:
  /// **'Upcoming meeting: {title}'**
  String notificationTitle(String title);

  /// No description provided for @dayMon.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get dayMon;

  /// No description provided for @dayTue.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get dayTue;

  /// No description provided for @dayWed.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get dayWed;

  /// No description provided for @dayThu.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get dayThu;

  /// No description provided for @dayFri.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get dayFri;

  /// No description provided for @daySat.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get daySat;

  /// No description provided for @daySun.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get daySun;

  /// No description provided for @restoresAfterMeeting.
  ///
  /// In en, this message translates to:
  /// **'Restores after meeting'**
  String get restoresAfterMeeting;

  /// No description provided for @deleteSchedule.
  ///
  /// In en, this message translates to:
  /// **'Delete schedule?'**
  String get deleteSchedule;

  /// No description provided for @deleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{title}\"?'**
  String deleteConfirm(String title);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @worldClock.
  ///
  /// In en, this message translates to:
  /// **'World Clock'**
  String get worldClock;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @repeatOn.
  ///
  /// In en, this message translates to:
  /// **'Repeat on'**
  String get repeatOn;

  /// No description provided for @deviceMode.
  ///
  /// In en, this message translates to:
  /// **'Device mode during meeting'**
  String get deviceMode;

  /// No description provided for @afterMeeting.
  ///
  /// In en, this message translates to:
  /// **'After meeting ends'**
  String get afterMeeting;

  /// No description provided for @restoreNormal.
  ///
  /// In en, this message translates to:
  /// **'Restore normal mode'**
  String get restoreNormal;

  /// No description provided for @restoreSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Send a reminder when the meeting ends so you can turn sound back on'**
  String get restoreSubtitle;

  /// No description provided for @templates.
  ///
  /// In en, this message translates to:
  /// **'TEMPLATES'**
  String get templates;

  /// No description provided for @enterTitle.
  ///
  /// In en, this message translates to:
  /// **'Please enter a meeting title'**
  String get enterTitle;

  /// No description provided for @selectDay.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one day'**
  String get selectDay;

  /// No description provided for @duplicateSchedule.
  ///
  /// In en, this message translates to:
  /// **'This schedule already exists'**
  String get duplicateSchedule;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get themeAuto;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'APPEARANCE'**
  String get settingsAppearance;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Security'**
  String get settingsPrivacy;

  /// No description provided for @privacyDescription.
  ///
  /// In en, this message translates to:
  /// **'All data is stored locally on your device. No personal information is collected, shared or transmitted.'**
  String get privacyDescription;

  /// No description provided for @monthJan.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get monthJan;

  /// No description provided for @monthFeb.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get monthFeb;

  /// No description provided for @monthMar.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get monthMar;

  /// No description provided for @monthApr.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get monthApr;

  /// No description provided for @monthMay.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get monthMay;

  /// No description provided for @monthJun.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get monthJun;

  /// No description provided for @monthJul.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get monthJul;

  /// No description provided for @monthAug.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get monthAug;

  /// No description provided for @monthSep.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get monthSep;

  /// No description provided for @monthOct.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get monthOct;

  /// No description provided for @monthNov.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get monthNov;

  /// No description provided for @monthDec.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get monthDec;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'Meeting Silencer v1.0.0'**
  String get appVersion;

  /// No description provided for @courseLabel.
  ///
  /// In en, this message translates to:
  /// **'ICT107 Mobile App and Web Development'**
  String get courseLabel;

  /// No description provided for @templateWork.
  ///
  /// In en, this message translates to:
  /// **'9-5 Work'**
  String get templateWork;

  /// No description provided for @templateLecture1h.
  ///
  /// In en, this message translates to:
  /// **'1hr Lecture'**
  String get templateLecture1h;

  /// No description provided for @templateLecture2h.
  ///
  /// In en, this message translates to:
  /// **'2hr Lecture'**
  String get templateLecture2h;

  /// No description provided for @templateStandup.
  ///
  /// In en, this message translates to:
  /// **'30min Standup'**
  String get templateStandup;

  /// No description provided for @templateEvening.
  ///
  /// In en, this message translates to:
  /// **'Evening Class'**
  String get templateEvening;

  /// No description provided for @meetingTitle.
  ///
  /// In en, this message translates to:
  /// **'Meeting title'**
  String get meetingTitle;

  /// No description provided for @meetingTitleHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Daily Stand-up'**
  String get meetingTitleHint;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'en',
        'fr',
        'hi',
        'ne',
        'tl',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'ne':
      return AppLocalizationsNe();
    case 'tl':
      return AppLocalizationsTl();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
