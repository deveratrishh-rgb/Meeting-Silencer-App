// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '会议静音器';

  @override
  String get navSchedules => '日程';

  @override
  String get navWorldClock => '世界时钟';

  @override
  String get navSettings => '设置';

  @override
  String get addSchedule => '添加日程';

  @override
  String get noSchedules => '暂无日程';

  @override
  String get noSchedulesHint => '点击 + 添加第一个会议日程';

  @override
  String get modeSilent => '静音';

  @override
  String get modeVibrate => '振动';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsDefaultMode => '默认模式';

  @override
  String get settingsAlertBefore => '会议前提醒';

  @override
  String minutes(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    return '$countString 分钟';
  }

  @override
  String notificationTitle(String title) {
    return '即将开始的会议：$title';
  }

  @override
  String get dayMon => '周一';

  @override
  String get dayTue => '周二';

  @override
  String get dayWed => '周三';

  @override
  String get dayThu => '周四';

  @override
  String get dayFri => '周五';

  @override
  String get daySat => '周六';

  @override
  String get daySun => '周日';

  @override
  String get restoresAfterMeeting => '会议结束后恢复';

  @override
  String get deleteSchedule => '删除日程？';

  @override
  String deleteConfirm(String title) {
    return '删除\"$title\"？';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get save => '保存';

  @override
  String get worldClock => '世界时钟';

  @override
  String get time => '时间';

  @override
  String get repeatOn => '重复日期';

  @override
  String get deviceMode => '会议期间设备模式';

  @override
  String get afterMeeting => '会议结束后';

  @override
  String get restoreNormal => '恢复正常模式';

  @override
  String get restoreSubtitle => '会议结束时发送提醒';

  @override
  String get templates => '模板';

  @override
  String get enterTitle => '请输入会议标题';

  @override
  String get selectDay => '请至少选择一天';

  @override
  String get duplicateSchedule => '该日程已存在';

  @override
  String get themeDark => '深色';

  @override
  String get themeLight => '浅色';

  @override
  String get themeAuto => '自动';

  @override
  String get settingsAppearance => '外观';

  @override
  String get settingsPrivacy => '隐私与安全';

  @override
  String get privacyDescription => '所有数据均存储在您的设备本地。不会收集、共享或传输任何个人信息。';

  @override
  String get monthJan => '1月';

  @override
  String get monthFeb => '2月';

  @override
  String get monthMar => '3月';

  @override
  String get monthApr => '4月';

  @override
  String get monthMay => '5月';

  @override
  String get monthJun => '6月';

  @override
  String get monthJul => '7月';

  @override
  String get monthAug => '8月';

  @override
  String get monthSep => '9月';

  @override
  String get monthOct => '10月';

  @override
  String get monthNov => '11月';

  @override
  String get monthDec => '12月';

  @override
  String get appVersion => 'Meeting Silencer v1.0.0';

  @override
  String get courseLabel => 'ICT107 移动应用与网页开发';

  @override
  String get templateWork => '9-5工作';

  @override
  String get templateLecture1h => '1小时讲座';

  @override
  String get templateLecture2h => '2小时讲座';

  @override
  String get templateStandup => '30分钟站会';

  @override
  String get templateEvening => '晚间课程';

  @override
  String get meetingTitle => '会议标题';

  @override
  String get meetingTitleHint => '例如：每日站会';
}
