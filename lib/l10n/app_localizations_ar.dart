// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'كاتم صوت الاجتماعات';

  @override
  String get navSchedules => 'الجداول';

  @override
  String get navWorldClock => 'الساعة العالمية';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get addSchedule => 'إضافة جدول';

  @override
  String get noSchedules => 'لا توجد جداول';

  @override
  String get noSchedulesHint => 'اضغط + لإضافة أول جدول';

  @override
  String get modeSilent => 'صامت';

  @override
  String get modeVibrate => 'اهتزاز';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsDefaultMode => 'الوضع الافتراضي';

  @override
  String get settingsAlertBefore => 'تنبيه قبل الاجتماع';

  @override
  String minutes(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    return '$countString دقيقة';
  }

  @override
  String notificationTitle(String title) {
    return 'اجتماع قادم: $title';
  }

  @override
  String get dayMon => 'الإث';

  @override
  String get dayTue => 'الثل';

  @override
  String get dayWed => 'الأر';

  @override
  String get dayThu => 'الخم';

  @override
  String get dayFri => 'الجم';

  @override
  String get daySat => 'السب';

  @override
  String get daySun => 'الأح';

  @override
  String get restoresAfterMeeting => 'استعادة بعد الاجتماع';

  @override
  String get deleteSchedule => 'حذف الجدول؟';

  @override
  String deleteConfirm(String title) {
    return 'إزالة \"$title\"؟';
  }

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get save => 'حفظ';

  @override
  String get worldClock => 'ساعة العالم';

  @override
  String get time => 'الوقت';

  @override
  String get repeatOn => 'تكرار في';

  @override
  String get deviceMode => 'وضع الجهاز أثناء الاجتماع';

  @override
  String get afterMeeting => 'بعد الاجتماع';

  @override
  String get restoreNormal => 'استعادة الوضع الطبيعي';

  @override
  String get restoreSubtitle => 'إرسال تذكير عند انتهاء الاجتماع';

  @override
  String get templates => 'القوالب';

  @override
  String get enterTitle => 'الرجاء إدخال عنوان الاجتماع';

  @override
  String get selectDay => 'الرجاء تحديد يوم واحد على الأقل';

  @override
  String get duplicateSchedule => 'هذا الجدول موجود بالفعل';

  @override
  String get themeDark => 'داكن';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeAuto => 'تلقائي';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsPrivacy => 'الخصوصية والأمان';

  @override
  String get privacyDescription => 'يتم تخزين جميع البيانات محليا على جهازك.';

  @override
  String get monthJan => 'يناير';

  @override
  String get monthFeb => 'فبراير';

  @override
  String get monthMar => 'مارس';

  @override
  String get monthApr => 'أبريل';

  @override
  String get monthMay => 'مايو';

  @override
  String get monthJun => 'يونيو';

  @override
  String get monthJul => 'يوليو';

  @override
  String get monthAug => 'أغسطس';

  @override
  String get monthSep => 'سبتمبر';

  @override
  String get monthOct => 'أكتوبر';

  @override
  String get monthNov => 'نوفمبر';

  @override
  String get monthDec => 'ديسمبر';

  @override
  String get appVersion => 'Meeting Silencer v1.0.0';

  @override
  String get courseLabel => 'ICT107 تطوير تطبيقات الجوال والويب';

  @override
  String get templateWork => 'عمل 9-5';

  @override
  String get templateLecture1h => 'محاضرة ساعة';

  @override
  String get templateLecture2h => 'محاضرة ساعتين';

  @override
  String get templateStandup => 'اجتماع 30 دقيقة';

  @override
  String get templateEvening => 'صف مسائي';

  @override
  String get meetingTitle => 'عنوان الاجتماع';

  @override
  String get meetingTitleHint => 'مثال: اجتماع يومي';
}
