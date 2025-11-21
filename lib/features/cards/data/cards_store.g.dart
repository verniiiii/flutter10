// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CardsStore on _CardsStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??= Computed<bool>(
    () => super.hasError,
    name: '_CardsStore.hasError',
  )).value;
  Computed<List<CardModel>>? _$activeCardsComputed;

  @override
  List<CardModel> get activeCards =>
      (_$activeCardsComputed ??= Computed<List<CardModel>>(
        () => super.activeCards,
        name: '_CardsStore.activeCards',
      )).value;
  Computed<List<CardModel>>? _$creditCardsComputed;

  @override
  List<CardModel> get creditCards =>
      (_$creditCardsComputed ??= Computed<List<CardModel>>(
        () => super.creditCards,
        name: '_CardsStore.creditCards',
      )).value;
  Computed<List<CardModel>>? _$debitCardsComputed;

  @override
  List<CardModel> get debitCards =>
      (_$debitCardsComputed ??= Computed<List<CardModel>>(
        () => super.debitCards,
        name: '_CardsStore.debitCards',
      )).value;
  Computed<double>? _$totalBalanceComputed;

  @override
  double get totalBalance => (_$totalBalanceComputed ??= Computed<double>(
    () => super.totalBalance,
    name: '_CardsStore.totalBalance',
  )).value;
  Computed<double>? _$totalCreditLimitComputed;

  @override
  double get totalCreditLimit =>
      (_$totalCreditLimitComputed ??= Computed<double>(
        () => super.totalCreditLimit,
        name: '_CardsStore.totalCreditLimit',
      )).value;
  Computed<double>? _$totalAvailableCreditComputed;

  @override
  double get totalAvailableCredit =>
      (_$totalAvailableCreditComputed ??= Computed<double>(
        () => super.totalAvailableCredit,
        name: '_CardsStore.totalAvailableCredit',
      )).value;

  late final _$cardsAtom = Atom(name: '_CardsStore.cards', context: context);

  @override
  ObservableList<CardModel> get cards {
    _$cardsAtom.reportRead();
    return super.cards;
  }

  @override
  set cards(ObservableList<CardModel> value) {
    _$cardsAtom.reportWrite(value, super.cards, () {
      super.cards = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: '_CardsStore.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_CardsStore.errorMessage',
    context: context,
  );

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$loadCardsAsyncAction = AsyncAction(
    '_CardsStore.loadCards',
    context: context,
  );

  @override
  Future<void> loadCards() {
    return _$loadCardsAsyncAction.run(() => super.loadCards());
  }

  late final _$_CardsStoreActionController = ActionController(
    name: '_CardsStore',
    context: context,
  );

  @override
  void addCard(CardModel card) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.addCard',
    );
    try {
      return super.addCard(card);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCard(String id, CardModel updatedCard) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.updateCard',
    );
    try {
      return super.updateCard(id, updatedCard);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteCard(String id) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.deleteCard',
    );
    try {
      return super.deleteCard(id);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleCardStatus(String id) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.toggleCardStatus',
    );
    try {
      return super.toggleCardStatus(id);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  CardModel? getCardById(String id) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.getCardById',
    );
    try {
      return super.getCardById(id);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearError() {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.clearError',
    );
    try {
      return super.clearError();
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String message) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
      name: '_CardsStore.setError',
    );
    try {
      return super.setError(message);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cards: ${cards},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
hasError: ${hasError},
activeCards: ${activeCards},
creditCards: ${creditCards},
debitCards: ${debitCards},
totalBalance: ${totalBalance},
totalCreditLimit: ${totalCreditLimit},
totalAvailableCredit: ${totalAvailableCredit}
    ''';
  }
}
