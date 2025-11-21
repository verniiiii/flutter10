import 'package:mobx/mobx.dart';
import 'user_model.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  @observable
  User? currentUser;

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @observable
  bool isLoggedIn = false;

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @action
  Future<void> login(String email, String password) async {
    isLoading = true;
    errorMessage = '';

    try {
      await Future.delayed(const Duration(seconds: 2));

      if (email.isNotEmpty && password.isNotEmpty) {
        currentUser = User(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          email: email,
          displayName: email.split('@').first,
          phoneNumber: '+7 (999) 999-99-99', // Тестовый номер
          photoUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face',
          createdAt: DateTime.now(),
          isEmailVerified: true,
          currency: Currency.rub,
          themeMode: ThemeMode.system,
          notificationsEnabled: true,
          biometricsEnabled: false,
          language: 'ru',
        );
        isLoggedIn = true;
        errorMessage = '';
      } else {
        throw Exception('Пожалуйста, заполните все поля');
      }
    } catch (e) {
      errorMessage = e.toString();
      isLoggedIn = false;
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> register(String email, String password, String confirmPassword) async {
    isLoading = true;
    errorMessage = '';

    try {
      if (password != confirmPassword) {
        throw Exception('Пароли не совпадают');
      }

      if (password.length < 6) {
        throw Exception('Пароль должен содержать минимум 6 символов');
      }

      await Future.delayed(const Duration(seconds: 2));

      currentUser = User(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        email: email,
        displayName: email.split('@').first,
        phoneNumber: null,
        photoUrl: null,
        createdAt: DateTime.now(),
        isEmailVerified: false,
        currency: Currency.rub,
        themeMode: ThemeMode.system,
        notificationsEnabled: true,
        biometricsEnabled: false,
        language: 'ru',
      );
      isLoggedIn = true;
      errorMessage = '';
    } catch (e) {
      errorMessage = e.toString();
      isLoggedIn = false;
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> logout() async {
    isLoading = true;
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      currentUser = null;
      isLoggedIn = false;
      errorMessage = '';
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> updateProfile({
    String? displayName,
    String? phoneNumber,
    String? photoUrl,
  }) async {
    if (currentUser == null) return;

    isLoading = true;
    try {
      await Future.delayed(const Duration(seconds: 1));

      currentUser = currentUser!.copyWith(
        displayName: displayName,
        phoneNumber: phoneNumber,
        photoUrl: photoUrl,
      );
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> updateSettings({
    Currency? currency,
    ThemeMode? themeMode,
    bool? notificationsEnabled,
    bool? biometricsEnabled,
    String? language,
  }) async {
    if (currentUser == null) return;

    isLoading = true;
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      currentUser = currentUser!.copyWith(
        currency: currency,
        themeMode: themeMode,
        notificationsEnabled: notificationsEnabled,
        biometricsEnabled: biometricsEnabled,
        language: language,
      );
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> resetPassword(String email) async {
    isLoading = true;
    errorMessage = '';

    try {
      await Future.delayed(const Duration(seconds: 2));
      if (email.isEmpty) {
        throw Exception('Введите email для восстановления пароля');
      }
      errorMessage = '';
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
    }
  }

  @action
  void clearError() {
    errorMessage = '';
  }
}