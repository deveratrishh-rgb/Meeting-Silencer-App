// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Silencieux de Réunion';

  @override
  String get navSchedules => 'Horaires';

  @override
  String get navWorldClock => 'Horloge Mondiale';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get addSchedule => 'Ajouter un horaire';

  @override
  String get noSchedules => 'Aucun horaire';

  @override
  String get noSchedulesHint =>
      'Appuyez sur + pour ajouter votre premier horaire';

  @override
  String get modeSilent => 'Silencieux';

  @override
  String get modeVibrate => 'Vibreur';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get settingsDefaultMode => 'Mode par défaut';

  @override
  String get settingsAlertBefore => 'Alerte avant la réunion';

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
    return 'Réunion à venir : $title';
  }

  @override
  String get dayMon => 'Lun';

  @override
  String get dayTue => 'Mar';

  @override
  String get dayWed => 'Mer';

  @override
  String get dayThu => 'Jeu';

  @override
  String get dayFri => 'Ven';

  @override
  String get daySat => 'Sam';

  @override
  String get daySun => 'Dim';

  @override
  String get restoresAfterMeeting => 'Restaure après la réunion';

  @override
  String get deleteSchedule => 'Supprimer l\'horaire ?';

  @override
  String deleteConfirm(String title) {
    return 'Supprimer « $title » ?';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get worldClock => 'Horloge Mondiale';

  @override
  String get time => 'Heure';

  @override
  String get repeatOn => 'Répéter le';

  @override
  String get deviceMode => 'Mode pendant la réunion';

  @override
  String get afterMeeting => 'Après la réunion';

  @override
  String get restoreNormal => 'Restaurer le mode normal';

  @override
  String get restoreSubtitle =>
      'Envoyer un rappel à la fin de la réunion pour rétablir le son';

  @override
  String get templates => 'MODÈLES';

  @override
  String get enterTitle => 'Veuillez saisir un titre de réunion';

  @override
  String get selectDay => 'Veuillez sélectionner au moins un jour';

  @override
  String get duplicateSchedule => 'Cet horaire existe déjà';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeAuto => 'Auto';

  @override
  String get settingsAppearance => 'APPARENCE';

  @override
  String get settingsPrivacy => 'Confidentialite et securite';

  @override
  String get privacyDescription =>
      'Toutes les donnees sont stockees localement sur votre appareil. Aucune information personnelle n est collectee, partagee ou transmise.';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Fev';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Avr';

  @override
  String get monthMay => 'Mai';

  @override
  String get monthJun => 'Juin';

  @override
  String get monthJul => 'Juil';

  @override
  String get monthAug => 'Aout';

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
  String get courseLabel => 'ICT107 Developpement Applications Mobiles et Web';

  @override
  String get templateWork => 'Travail 9-17h';

  @override
  String get templateLecture1h => 'Cours 1h';

  @override
  String get templateLecture2h => 'Cours 2h';

  @override
  String get templateStandup => 'Reunion 30min';

  @override
  String get templateEvening => 'Cours du soir';

  @override
  String get meetingTitle => 'Titre de la reunion';

  @override
  String get meetingTitleHint => 'ex. Reunion quotidienne';

  @override
  String get importSchedules => 'Importer des horaires';

  @override
  String get importSchedulesHint =>
      'Collez du JSON pour ajouter plusieurs horaires a la fois';

  @override
  String get importSchedulesPlaceholder => 'Collez votre liste JSON ici';

  @override
  String importSuccess(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horaires importes',
      one: '$count horaire importe',
    );
    return '$_temp0';
  }

  @override
  String get importError =>
      'Impossible de lire le JSON. Verifiez le format et reessayez.';

  @override
  String get pickFile => 'Choisir un fichier';

  @override
  String get appLock => 'Verrouillage de l app';

  @override
  String get appLockHint => 'Demander un code PIN pour ouvrir l application';

  @override
  String get changePin => 'Changer le code PIN';

  @override
  String get setPin => 'Definir le code PIN';

  @override
  String get enterPin => 'Entrez le code PIN';

  @override
  String get newPin => 'Nouveau code PIN';

  @override
  String get confirmPin => 'Confirmer le code PIN';

  @override
  String get unlock => 'Deverrouiller';

  @override
  String get wrongPin => 'Code PIN incorrect';

  @override
  String get pinLength => 'Le code PIN doit comporter 4 chiffres';

  @override
  String get pinMismatch => 'Les codes PIN ne correspondent pas';

  @override
  String get pinSaved => 'Code PIN enregistre';
}
