// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$User on _User, Store {
  late final _$idAtom = Atom(name: '_User.id', context: context);

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$emailAtom = Atom(name: '_User.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$displayNameAtom = Atom(
    name: '_User.displayName',
    context: context,
  );

  @override
  String? get displayName {
    _$displayNameAtom.reportRead();
    return super.displayName;
  }

  @override
  set displayName(String? value) {
    _$displayNameAtom.reportWrite(value, super.displayName, () {
      super.displayName = value;
    });
  }

  late final _$phoneNumberAtom = Atom(
    name: '_User.phoneNumber',
    context: context,
  );

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$photoUrlAtom = Atom(name: '_User.photoUrl', context: context);

  @override
  String? get photoUrl {
    _$photoUrlAtom.reportRead();
    return super.photoUrl;
  }

  @override
  set photoUrl(String? value) {
    _$photoUrlAtom.reportWrite(value, super.photoUrl, () {
      super.photoUrl = value;
    });
  }

  late final _$createdAtAtom = Atom(name: '_User.createdAt', context: context);

  @override
  DateTime get createdAt {
    _$createdAtAtom.reportRead();
    return super.createdAt;
  }

  @override
  set createdAt(DateTime value) {
    _$createdAtAtom.reportWrite(value, super.createdAt, () {
      super.createdAt = value;
    });
  }

  late final _$isEmailVerifiedAtom = Atom(
    name: '_User.isEmailVerified',
    context: context,
  );

  @override
  bool get isEmailVerified {
    _$isEmailVerifiedAtom.reportRead();
    return super.isEmailVerified;
  }

  @override
  set isEmailVerified(bool value) {
    _$isEmailVerifiedAtom.reportWrite(value, super.isEmailVerified, () {
      super.isEmailVerified = value;
    });
  }

  late final _$currencyAtom = Atom(name: '_User.currency', context: context);

  @override
  Currency get currency {
    _$currencyAtom.reportRead();
    return super.currency;
  }

  @override
  set currency(Currency value) {
    _$currencyAtom.reportWrite(value, super.currency, () {
      super.currency = value;
    });
  }

  late final _$themeModeAtom = Atom(name: '_User.themeMode', context: context);

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$notificationsEnabledAtom = Atom(
    name: '_User.notificationsEnabled',
    context: context,
  );

  @override
  bool get notificationsEnabled {
    _$notificationsEnabledAtom.reportRead();
    return super.notificationsEnabled;
  }

  @override
  set notificationsEnabled(bool value) {
    _$notificationsEnabledAtom.reportWrite(
      value,
      super.notificationsEnabled,
      () {
        super.notificationsEnabled = value;
      },
    );
  }

  late final _$biometricsEnabledAtom = Atom(
    name: '_User.biometricsEnabled',
    context: context,
  );

  @override
  bool get biometricsEnabled {
    _$biometricsEnabledAtom.reportRead();
    return super.biometricsEnabled;
  }

  @override
  set biometricsEnabled(bool value) {
    _$biometricsEnabledAtom.reportWrite(value, super.biometricsEnabled, () {
      super.biometricsEnabled = value;
    });
  }

  late final _$languageAtom = Atom(name: '_User.language', context: context);

  @override
  String? get language {
    _$languageAtom.reportRead();
    return super.language;
  }

  @override
  set language(String? value) {
    _$languageAtom.reportWrite(value, super.language, () {
      super.language = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
email: ${email},
displayName: ${displayName},
phoneNumber: ${phoneNumber},
photoUrl: ${photoUrl},
createdAt: ${createdAt},
isEmailVerified: ${isEmailVerified},
currency: ${currency},
themeMode: ${themeMode},
notificationsEnabled: ${notificationsEnabled},
biometricsEnabled: ${biometricsEnabled},
language: ${language}
    ''';
  }
}
