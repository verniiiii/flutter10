// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??= Computed<bool>(
    () => super.hasError,
    name: '_AuthStore.hasError',
  )).value;

  late final _$currentUserAtom = Atom(
    name: '_AuthStore.currentUser',
    context: context,
  );

  @override
  User? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(User? value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: '_AuthStore.isLoading',
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
    name: '_AuthStore.errorMessage',
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

  late final _$isLoggedInAtom = Atom(
    name: '_AuthStore.isLoggedIn',
    context: context,
  );

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  late final _$loginAsyncAction = AsyncAction(
    '_AuthStore.login',
    context: context,
  );

  @override
  Future<void> login(String email, String password) {
    return _$loginAsyncAction.run(() => super.login(email, password));
  }

  late final _$registerAsyncAction = AsyncAction(
    '_AuthStore.register',
    context: context,
  );

  @override
  Future<void> register(String email, String password, String confirmPassword) {
    return _$registerAsyncAction.run(
      () => super.register(email, password, confirmPassword),
    );
  }

  late final _$logoutAsyncAction = AsyncAction(
    '_AuthStore.logout',
    context: context,
  );

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$updateProfileAsyncAction = AsyncAction(
    '_AuthStore.updateProfile',
    context: context,
  );

  @override
  Future<void> updateProfile({
    String? displayName,
    String? phoneNumber,
    String? photoUrl,
  }) {
    return _$updateProfileAsyncAction.run(
      () => super.updateProfile(
        displayName: displayName,
        phoneNumber: phoneNumber,
        photoUrl: photoUrl,
      ),
    );
  }

  late final _$updateSettingsAsyncAction = AsyncAction(
    '_AuthStore.updateSettings',
    context: context,
  );

  @override
  Future<void> updateSettings({
    Currency? currency,
    ThemeMode? themeMode,
    bool? notificationsEnabled,
    bool? biometricsEnabled,
    String? language,
  }) {
    return _$updateSettingsAsyncAction.run(
      () => super.updateSettings(
        currency: currency,
        themeMode: themeMode,
        notificationsEnabled: notificationsEnabled,
        biometricsEnabled: biometricsEnabled,
        language: language,
      ),
    );
  }

  late final _$resetPasswordAsyncAction = AsyncAction(
    '_AuthStore.resetPassword',
    context: context,
  );

  @override
  Future<void> resetPassword(String email) {
    return _$resetPasswordAsyncAction.run(() => super.resetPassword(email));
  }

  late final _$_AuthStoreActionController = ActionController(
    name: '_AuthStore',
    context: context,
  );

  @override
  void clearError() {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
      name: '_AuthStore.clearError',
    );
    try {
      return super.clearError();
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
isLoggedIn: ${isLoggedIn},
hasError: ${hasError}
    ''';
  }
}
