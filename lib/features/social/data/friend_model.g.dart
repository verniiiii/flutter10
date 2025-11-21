// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Friend on _Friend, Store {
  late final _$idAtom = Atom(name: '_Friend.id', context: context);

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

  late final _$nameAtom = Atom(name: '_Friend.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$phoneNumberAtom = Atom(
    name: '_Friend.phoneNumber',
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

  late final _$emailAtom = Atom(name: '_Friend.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$photoUrlAtom = Atom(name: '_Friend.photoUrl', context: context);

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

  late final _$statusAtom = Atom(name: '_Friend.status', context: context);

  @override
  FriendStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(FriendStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$lastActiveAtom = Atom(
    name: '_Friend.lastActive',
    context: context,
  );

  @override
  DateTime? get lastActive {
    _$lastActiveAtom.reportRead();
    return super.lastActive;
  }

  @override
  set lastActive(DateTime? value) {
    _$lastActiveAtom.reportWrite(value, super.lastActive, () {
      super.lastActive = value;
    });
  }

  late final _$totalBalanceAtom = Atom(
    name: '_Friend.totalBalance',
    context: context,
  );

  @override
  double? get totalBalance {
    _$totalBalanceAtom.reportRead();
    return super.totalBalance;
  }

  @override
  set totalBalance(double? value) {
    _$totalBalanceAtom.reportWrite(value, super.totalBalance, () {
      super.totalBalance = value;
    });
  }

  late final _$commonGoalsAtom = Atom(
    name: '_Friend.commonGoals',
    context: context,
  );

  @override
  int? get commonGoals {
    _$commonGoalsAtom.reportRead();
    return super.commonGoals;
  }

  @override
  set commonGoals(int? value) {
    _$commonGoalsAtom.reportWrite(value, super.commonGoals, () {
      super.commonGoals = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
phoneNumber: ${phoneNumber},
email: ${email},
photoUrl: ${photoUrl},
status: ${status},
lastActive: ${lastActive},
totalBalance: ${totalBalance},
commonGoals: ${commonGoals}
    ''';
  }
}
