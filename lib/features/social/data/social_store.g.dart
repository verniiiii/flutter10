// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SocialStore on _SocialStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??= Computed<bool>(
    () => super.hasError,
    name: '_SocialStore.hasError',
  )).value;
  Computed<List<Friend>>? _$filteredContactsComputed;

  @override
  List<Friend> get filteredContacts =>
      (_$filteredContactsComputed ??= Computed<List<Friend>>(
        () => super.filteredContacts,
        name: '_SocialStore.filteredContacts',
      )).value;
  Computed<int>? _$totalAppUsersComputed;

  @override
  int get totalAppUsers => (_$totalAppUsersComputed ??= Computed<int>(
    () => super.totalAppUsers,
    name: '_SocialStore.totalAppUsers',
  )).value;
  Computed<int>? _$totalInvitedComputed;

  @override
  int get totalInvited => (_$totalInvitedComputed ??= Computed<int>(
    () => super.totalInvited,
    name: '_SocialStore.totalInvited',
  )).value;
  Computed<int>? _$totalContactsComputed;

  @override
  int get totalContacts => (_$totalContactsComputed ??= Computed<int>(
    () => super.totalContacts,
    name: '_SocialStore.totalContacts',
  )).value;

  late final _$allContactsAtom = Atom(
    name: '_SocialStore.allContacts',
    context: context,
  );

  @override
  ObservableList<Friend> get allContacts {
    _$allContactsAtom.reportRead();
    return super.allContacts;
  }

  @override
  set allContacts(ObservableList<Friend> value) {
    _$allContactsAtom.reportWrite(value, super.allContacts, () {
      super.allContacts = value;
    });
  }

  late final _$appUsersAtom = Atom(
    name: '_SocialStore.appUsers',
    context: context,
  );

  @override
  ObservableList<Friend> get appUsers {
    _$appUsersAtom.reportRead();
    return super.appUsers;
  }

  @override
  set appUsers(ObservableList<Friend> value) {
    _$appUsersAtom.reportWrite(value, super.appUsers, () {
      super.appUsers = value;
    });
  }

  late final _$invitedContactsAtom = Atom(
    name: '_SocialStore.invitedContacts',
    context: context,
  );

  @override
  ObservableList<Friend> get invitedContacts {
    _$invitedContactsAtom.reportRead();
    return super.invitedContacts;
  }

  @override
  set invitedContacts(ObservableList<Friend> value) {
    _$invitedContactsAtom.reportWrite(value, super.invitedContacts, () {
      super.invitedContacts = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: '_SocialStore.isLoading',
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
    name: '_SocialStore.errorMessage',
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

  late final _$searchQueryAtom = Atom(
    name: '_SocialStore.searchQuery',
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

  late final _$showOnlyAppUsersAtom = Atom(
    name: '_SocialStore.showOnlyAppUsers',
    context: context,
  );

  @override
  bool get showOnlyAppUsers {
    _$showOnlyAppUsersAtom.reportRead();
    return super.showOnlyAppUsers;
  }

  @override
  set showOnlyAppUsers(bool value) {
    _$showOnlyAppUsersAtom.reportWrite(value, super.showOnlyAppUsers, () {
      super.showOnlyAppUsers = value;
    });
  }

  late final _$_loadDemoDataAsyncAction = AsyncAction(
    '_SocialStore._loadDemoData',
    context: context,
  );

  @override
  Future<void> _loadDemoData() {
    return _$_loadDemoDataAsyncAction.run(() => super._loadDemoData());
  }

  late final _$inviteFriendAsyncAction = AsyncAction(
    '_SocialStore.inviteFriend',
    context: context,
  );

  @override
  Future<void> inviteFriend(Friend friend) {
    return _$inviteFriendAsyncAction.run(() => super.inviteFriend(friend));
  }

  late final _$syncContactsAsyncAction = AsyncAction(
    '_SocialStore.syncContacts',
    context: context,
  );

  @override
  Future<void> syncContacts() {
    return _$syncContactsAsyncAction.run(() => super.syncContacts());
  }

  late final _$_SocialStoreActionController = ActionController(
    name: '_SocialStore',
    context: context,
  );

  @override
  void setSearchQuery(String query) {
    final _$actionInfo = _$_SocialStoreActionController.startAction(
      name: '_SocialStore.setSearchQuery',
    );
    try {
      return super.setSearchQuery(query);
    } finally {
      _$_SocialStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleShowOnlyAppUsers() {
    final _$actionInfo = _$_SocialStoreActionController.startAction(
      name: '_SocialStore.toggleShowOnlyAppUsers',
    );
    try {
      return super.toggleShowOnlyAppUsers();
    } finally {
      _$_SocialStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearError() {
    final _$actionInfo = _$_SocialStoreActionController.startAction(
      name: '_SocialStore.clearError',
    );
    try {
      return super.clearError();
    } finally {
      _$_SocialStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _updateFilteredLists() {
    final _$actionInfo = _$_SocialStoreActionController.startAction(
      name: '_SocialStore._updateFilteredLists',
    );
    try {
      return super._updateFilteredLists();
    } finally {
      _$_SocialStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allContacts: ${allContacts},
appUsers: ${appUsers},
invitedContacts: ${invitedContacts},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
searchQuery: ${searchQuery},
showOnlyAppUsers: ${showOnlyAppUsers},
hasError: ${hasError},
filteredContacts: ${filteredContacts},
totalAppUsers: ${totalAppUsers},
totalInvited: ${totalInvited},
totalContacts: ${totalContacts}
    ''';
  }
}
