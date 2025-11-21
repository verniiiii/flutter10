// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CardModel on _CardModel, Store {
  Computed<bool>? _$isCreditCardComputed;

  @override
  bool get isCreditCard => (_$isCreditCardComputed ??= Computed<bool>(
    () => super.isCreditCard,
    name: '_CardModel.isCreditCard',
  )).value;
  Computed<double>? _$availableCreditComputed;

  @override
  double get availableCredit => (_$availableCreditComputed ??= Computed<double>(
    () => super.availableCredit,
    name: '_CardModel.availableCredit',
  )).value;

  late final _$idAtom = Atom(name: '_CardModel.id', context: context);

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

  late final _$cardNumberAtom = Atom(
    name: '_CardModel.cardNumber',
    context: context,
  );

  @override
  String get cardNumber {
    _$cardNumberAtom.reportRead();
    return super.cardNumber;
  }

  @override
  set cardNumber(String value) {
    _$cardNumberAtom.reportWrite(value, super.cardNumber, () {
      super.cardNumber = value;
    });
  }

  late final _$cardHolderNameAtom = Atom(
    name: '_CardModel.cardHolderName',
    context: context,
  );

  @override
  String get cardHolderName {
    _$cardHolderNameAtom.reportRead();
    return super.cardHolderName;
  }

  @override
  set cardHolderName(String value) {
    _$cardHolderNameAtom.reportWrite(value, super.cardHolderName, () {
      super.cardHolderName = value;
    });
  }

  late final _$expiryDateAtom = Atom(
    name: '_CardModel.expiryDate',
    context: context,
  );

  @override
  DateTime get expiryDate {
    _$expiryDateAtom.reportRead();
    return super.expiryDate;
  }

  @override
  set expiryDate(DateTime value) {
    _$expiryDateAtom.reportWrite(value, super.expiryDate, () {
      super.expiryDate = value;
    });
  }

  late final _$cvvAtom = Atom(name: '_CardModel.cvv', context: context);

  @override
  String get cvv {
    _$cvvAtom.reportRead();
    return super.cvv;
  }

  @override
  set cvv(String value) {
    _$cvvAtom.reportWrite(value, super.cvv, () {
      super.cvv = value;
    });
  }

  late final _$cardTypeAtom = Atom(
    name: '_CardModel.cardType',
    context: context,
  );

  @override
  CardType get cardType {
    _$cardTypeAtom.reportRead();
    return super.cardType;
  }

  @override
  set cardType(CardType value) {
    _$cardTypeAtom.reportWrite(value, super.cardType, () {
      super.cardType = value;
    });
  }

  late final _$bankNameAtom = Atom(
    name: '_CardModel.bankName',
    context: context,
  );

  @override
  String get bankName {
    _$bankNameAtom.reportRead();
    return super.bankName;
  }

  @override
  set bankName(String value) {
    _$bankNameAtom.reportWrite(value, super.bankName, () {
      super.bankName = value;
    });
  }

  late final _$balanceAtom = Atom(name: '_CardModel.balance', context: context);

  @override
  double get balance {
    _$balanceAtom.reportRead();
    return super.balance;
  }

  @override
  set balance(double value) {
    _$balanceAtom.reportWrite(value, super.balance, () {
      super.balance = value;
    });
  }

  late final _$creditLimitAtom = Atom(
    name: '_CardModel.creditLimit',
    context: context,
  );

  @override
  double? get creditLimit {
    _$creditLimitAtom.reportRead();
    return super.creditLimit;
  }

  @override
  set creditLimit(double? value) {
    _$creditLimitAtom.reportWrite(value, super.creditLimit, () {
      super.creditLimit = value;
    });
  }

  late final _$cardColorAtom = Atom(
    name: '_CardModel.cardColor',
    context: context,
  );

  @override
  CardColor get cardColor {
    _$cardColorAtom.reportRead();
    return super.cardColor;
  }

  @override
  set cardColor(CardColor value) {
    _$cardColorAtom.reportWrite(value, super.cardColor, () {
      super.cardColor = value;
    });
  }

  late final _$isActiveAtom = Atom(
    name: '_CardModel.isActive',
    context: context,
  );

  @override
  bool get isActive {
    _$isActiveAtom.reportRead();
    return super.isActive;
  }

  @override
  set isActive(bool value) {
    _$isActiveAtom.reportWrite(value, super.isActive, () {
      super.isActive = value;
    });
  }

  late final _$createdAtAtom = Atom(
    name: '_CardModel.createdAt',
    context: context,
  );

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

  @override
  String toString() {
    return '''
id: ${id},
cardNumber: ${cardNumber},
cardHolderName: ${cardHolderName},
expiryDate: ${expiryDate},
cvv: ${cvv},
cardType: ${cardType},
bankName: ${bankName},
balance: ${balance},
creditLimit: ${creditLimit},
cardColor: ${cardColor},
isActive: ${isActive},
createdAt: ${createdAt},
isCreditCard: ${isCreditCard},
availableCredit: ${availableCredit}
    ''';
  }
}
