import 'package:mobx/mobx.dart';

part 'user_model.g.dart';

enum Currency {
  rub('Рубли (₽)', 'RUB'),
  usd('Доллары (\$)', 'USD'),
  eur('Евро (€)', 'EUR');

  const Currency(this.displayName, this.symbol);
  final String displayName;
  final String symbol;
}

enum ThemeMode {
  light('Светлая'),
  dark('Тёмная'),
  system('Как в системе');

  const ThemeMode(this.displayName);
  final String displayName;
}

class User = _User with _$User;

abstract class _User with Store {
  @observable
  String id;

  @observable
  String email;

  @observable
  String? displayName;

  @observable
  String? phoneNumber;

  @observable
  String? photoUrl;

  @observable
  DateTime createdAt;

  @observable
  bool isEmailVerified;

  @observable
  Currency currency;

  @observable
  ThemeMode themeMode;

  @observable
  bool notificationsEnabled;

  @observable
  bool biometricsEnabled;

  @observable
  String? language;

  _User({
    required this.id,
    required this.email,
    this.displayName,
    this.phoneNumber,
    this.photoUrl,
    required this.createdAt,
    this.isEmailVerified = false,
    this.currency = Currency.rub,
    this.themeMode = ThemeMode.system,
    this.notificationsEnabled = true,
    this.biometricsEnabled = false,
    this.language,
  });

  User copyWith({
    String? id,
    String? email,
    String? displayName,
    String? phoneNumber,
    String? photoUrl,
    DateTime? createdAt,
    bool? isEmailVerified,
    Currency? currency,
    ThemeMode? themeMode,
    bool? notificationsEnabled,
    bool? biometricsEnabled,
    String? language,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      photoUrl: photoUrl ?? this.photoUrl,
      createdAt: createdAt ?? this.createdAt,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      currency: currency ?? this.currency,
      themeMode: themeMode ?? this.themeMode,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      biometricsEnabled: biometricsEnabled ?? this.biometricsEnabled,
      language: language ?? this.language,
    );
  }
}