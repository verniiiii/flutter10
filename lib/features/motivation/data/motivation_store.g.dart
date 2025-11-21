// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motivation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MotivationStore on _MotivationStore, Store {
  Computed<List<MotivationContent>>? _$filteredContentComputed;

  @override
  List<MotivationContent> get filteredContent =>
      (_$filteredContentComputed ??= Computed<List<MotivationContent>>(
        () => super.filteredContent,
        name: '_MotivationStore.filteredContent',
      )).value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??= Computed<bool>(
    () => super.hasError,
    name: '_MotivationStore.hasError',
  )).value;

  late final _$allContentAtom = Atom(
    name: '_MotivationStore.allContent',
    context: context,
  );

  @override
  ObservableList<MotivationContent> get allContent {
    _$allContentAtom.reportRead();
    return super.allContent;
  }

  @override
  set allContent(ObservableList<MotivationContent> value) {
    _$allContentAtom.reportWrite(value, super.allContent, () {
      super.allContent = value;
    });
  }

  late final _$currentContentAtom = Atom(
    name: '_MotivationStore.currentContent',
    context: context,
  );

  @override
  MotivationContent? get currentContent {
    _$currentContentAtom.reportRead();
    return super.currentContent;
  }

  @override
  set currentContent(MotivationContent? value) {
    _$currentContentAtom.reportWrite(value, super.currentContent, () {
      super.currentContent = value;
    });
  }

  late final _$selectedTypeAtom = Atom(
    name: '_MotivationStore.selectedType',
    context: context,
  );

  @override
  ContentType get selectedType {
    _$selectedTypeAtom.reportRead();
    return super.selectedType;
  }

  @override
  set selectedType(ContentType value) {
    _$selectedTypeAtom.reportWrite(value, super.selectedType, () {
      super.selectedType = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: '_MotivationStore.isLoading',
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
    name: '_MotivationStore.errorMessage',
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

  late final _$favoritesAtom = Atom(
    name: '_MotivationStore.favorites',
    context: context,
  );

  @override
  ObservableList<MotivationContent> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(ObservableList<MotivationContent> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  late final _$_MotivationStoreActionController = ActionController(
    name: '_MotivationStore',
    context: context,
  );

  @override
  void _initializeContent() {
    final _$actionInfo = _$_MotivationStoreActionController.startAction(
      name: '_MotivationStore._initializeContent',
    );
    try {
      return super._initializeContent();
    } finally {
      _$_MotivationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getRandomContent() {
    final _$actionInfo = _$_MotivationStoreActionController.startAction(
      name: '_MotivationStore._getRandomContent',
    );
    try {
      return super._getRandomContent();
    } finally {
      _$_MotivationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getNewContent() {
    final _$actionInfo = _$_MotivationStoreActionController.startAction(
      name: '_MotivationStore.getNewContent',
    );
    try {
      return super.getNewContent();
    } finally {
      _$_MotivationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setContentType(ContentType type) {
    final _$actionInfo = _$_MotivationStoreActionController.startAction(
      name: '_MotivationStore.setContentType',
    );
    try {
      return super.setContentType(type);
    } finally {
      _$_MotivationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleFavorite() {
    final _$actionInfo = _$_MotivationStoreActionController.startAction(
      name: '_MotivationStore.toggleFavorite',
    );
    try {
      return super.toggleFavorite();
    } finally {
      _$_MotivationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearError() {
    final _$actionInfo = _$_MotivationStoreActionController.startAction(
      name: '_MotivationStore.clearError',
    );
    try {
      return super.clearError();
    } finally {
      _$_MotivationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allContent: ${allContent},
currentContent: ${currentContent},
selectedType: ${selectedType},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
favorites: ${favorites},
filteredContent: ${filteredContent},
hasError: ${hasError}
    ''';
  }
}
