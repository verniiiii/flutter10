// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsStore on _NewsStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??= Computed<bool>(
    () => super.hasError,
    name: '_NewsStore.hasError',
  )).value;
  Computed<List<NewsArticle>>? _$filteredNewsComputed;

  @override
  List<NewsArticle> get filteredNews =>
      (_$filteredNewsComputed ??= Computed<List<NewsArticle>>(
        () => super.filteredNews,
        name: '_NewsStore.filteredNews',
      )).value;
  Computed<List<CurrencyRate>>? _$majorCurrenciesComputed;

  @override
  List<CurrencyRate> get majorCurrencies =>
      (_$majorCurrenciesComputed ??= Computed<List<CurrencyRate>>(
        () => super.majorCurrencies,
        name: '_NewsStore.majorCurrencies',
      )).value;
  Computed<List<CurrencyRate>>? _$otherCurrenciesComputed;

  @override
  List<CurrencyRate> get otherCurrencies =>
      (_$otherCurrenciesComputed ??= Computed<List<CurrencyRate>>(
        () => super.otherCurrencies,
        name: '_NewsStore.otherCurrencies',
      )).value;

  late final _$newsArticlesAtom = Atom(
    name: '_NewsStore.newsArticles',
    context: context,
  );

  @override
  ObservableList<NewsArticle> get newsArticles {
    _$newsArticlesAtom.reportRead();
    return super.newsArticles;
  }

  @override
  set newsArticles(ObservableList<NewsArticle> value) {
    _$newsArticlesAtom.reportWrite(value, super.newsArticles, () {
      super.newsArticles = value;
    });
  }

  late final _$currencyRatesAtom = Atom(
    name: '_NewsStore.currencyRates',
    context: context,
  );

  @override
  ObservableList<CurrencyRate> get currencyRates {
    _$currencyRatesAtom.reportRead();
    return super.currencyRates;
  }

  @override
  set currencyRates(ObservableList<CurrencyRate> value) {
    _$currencyRatesAtom.reportWrite(value, super.currencyRates, () {
      super.currencyRates = value;
    });
  }

  late final _$cryptoRatesAtom = Atom(
    name: '_NewsStore.cryptoRates',
    context: context,
  );

  @override
  ObservableList<NewsArticle> get cryptoRates {
    _$cryptoRatesAtom.reportRead();
    return super.cryptoRates;
  }

  @override
  set cryptoRates(ObservableList<NewsArticle> value) {
    _$cryptoRatesAtom.reportWrite(value, super.cryptoRates, () {
      super.cryptoRates = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: '_NewsStore.isLoading',
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
    name: '_NewsStore.errorMessage',
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

  late final _$selectedCategoryAtom = Atom(
    name: '_NewsStore.selectedCategory',
    context: context,
  );

  @override
  NewsCategory get selectedCategory {
    _$selectedCategoryAtom.reportRead();
    return super.selectedCategory;
  }

  @override
  set selectedCategory(NewsCategory value) {
    _$selectedCategoryAtom.reportWrite(value, super.selectedCategory, () {
      super.selectedCategory = value;
    });
  }

  late final _$searchQueryAtom = Atom(
    name: '_NewsStore.searchQuery',
    context: context,
  );

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$showOnlyUnreadAtom = Atom(
    name: '_NewsStore.showOnlyUnread',
    context: context,
  );

  @override
  bool get showOnlyUnread {
    _$showOnlyUnreadAtom.reportRead();
    return super.showOnlyUnread;
  }

  @override
  set showOnlyUnread(bool value) {
    _$showOnlyUnreadAtom.reportWrite(value, super.showOnlyUnread, () {
      super.showOnlyUnread = value;
    });
  }

  late final _$_loadDemoDataAsyncAction = AsyncAction(
    '_NewsStore._loadDemoData',
    context: context,
  );

  @override
  Future<void> _loadDemoData() {
    return _$_loadDemoDataAsyncAction.run(() => super._loadDemoData());
  }

  late final _$refreshDataAsyncAction = AsyncAction(
    '_NewsStore.refreshData',
    context: context,
  );

  @override
  Future<void> refreshData() {
    return _$refreshDataAsyncAction.run(() => super.refreshData());
  }

  late final _$_NewsStoreActionController = ActionController(
    name: '_NewsStore',
    context: context,
  );

  @override
  void setCategory(NewsCategory category) {
    final _$actionInfo = _$_NewsStoreActionController.startAction(
      name: '_NewsStore.setCategory',
    );
    try {
      return super.setCategory(category);
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearchQuery(String query) {
    final _$actionInfo = _$_NewsStoreActionController.startAction(
      name: '_NewsStore.setSearchQuery',
    );
    try {
      return super.setSearchQuery(query);
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleShowOnlyUnread() {
    final _$actionInfo = _$_NewsStoreActionController.startAction(
      name: '_NewsStore.toggleShowOnlyUnread',
    );
    try {
      return super.toggleShowOnlyUnread();
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAsRead(String articleId) {
    final _$actionInfo = _$_NewsStoreActionController.startAction(
      name: '_NewsStore.markAsRead',
    );
    try {
      return super.markAsRead(articleId);
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAllAsRead() {
    final _$actionInfo = _$_NewsStoreActionController.startAction(
      name: '_NewsStore.markAllAsRead',
    );
    try {
      return super.markAllAsRead();
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearError() {
    final _$actionInfo = _$_NewsStoreActionController.startAction(
      name: '_NewsStore.clearError',
    );
    try {
      return super.clearError();
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newsArticles: ${newsArticles},
currencyRates: ${currencyRates},
cryptoRates: ${cryptoRates},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
selectedCategory: ${selectedCategory},
searchQuery: ${searchQuery},
showOnlyUnread: ${showOnlyUnread},
hasError: ${hasError},
filteredNews: ${filteredNews},
majorCurrencies: ${majorCurrencies},
otherCurrencies: ${otherCurrencies}
    ''';
  }
}
