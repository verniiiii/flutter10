import 'package:mobx/mobx.dart';
import 'card_model.dart';

part 'cards_store.g.dart';

class CardsStore = _CardsStore with _$CardsStore;

abstract class _CardsStore with Store {
  @observable
  ObservableList<CardModel> cards = ObservableList<CardModel>();

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @computed
  List<CardModel> get activeCards =>
      cards.where((card) => card.isActive).toList();

  @computed
  List<CardModel> get creditCards =>
      cards.where((card) => card.cardType == CardType.credit).toList();

  @computed
  List<CardModel> get debitCards =>
      cards.where((card) => card.cardType == CardType.debit).toList();

  @computed
  double get totalBalance => cards.fold(0.0, (sum, card) => sum + card.balance);

  @computed
  double get totalCreditLimit => creditCards.fold(
      0.0, (sum, card) => sum + (card.creditLimit ?? 0));

  @computed
  double get totalAvailableCredit =>
      totalCreditLimit - creditCards.fold(0.0, (sum, card) => sum + card.balance);

  @action
  void addCard(CardModel card) {
    cards.add(card);
  }

  @action
  void updateCard(String id, CardModel updatedCard) {
    final index = cards.indexWhere((card) => card.id == id);
    if (index != -1) {
      cards[index] = updatedCard;
    }
  }

  @action
  void deleteCard(String id) {
    cards.removeWhere((card) => card.id == id);
  }

  @action
  void toggleCardStatus(String id) {
    final index = cards.indexWhere((card) => card.id == id);
    if (index != -1) {
      final card = cards[index];
      cards[index] = card.copyWith(isActive: !card.isActive);
    }
  }

  @action
  CardModel? getCardById(String id) {
    try {
      return cards.firstWhere((card) => card.id == id);
    } catch (e) {
      return null;
    }
  }

  @action
  void clearError() {
    errorMessage = '';
  }

  @action
  void setError(String message) {
    errorMessage = message;
  }

  // Имитация загрузки данных (в реальном приложении будет API вызов)
  @action
  Future<void> loadCards() async {
    isLoading = true;
    errorMessage = '';

    try {
      await Future.delayed(const Duration(seconds: 2));

      // Добавляем тестовые данные
      cards.clear();
      cards.addAll([
        CardModel(
          id: '1',
          cardNumber: '1234567812345678',
          cardHolderName: 'ИВАН ИВАНОВ',
          expiryDate: DateTime(2026, 12, 1),
          cvv: '123',
          cardType: CardType.debit,
          bankName: 'Тинькофф',
          balance: 15432.50,
          cardColor: CardColor.blue,
          createdAt: DateTime(2023, 1, 15),
        ),
        CardModel(
          id: '2',
          cardNumber: '8765432187654321',
          cardHolderName: 'ИВАН ИВАНОВ',
          expiryDate: DateTime(2025, 8, 1),
          cvv: '456',
          cardType: CardType.credit,
          bankName: 'Сбербанк',
          balance: 12500.00,
          creditLimit: 150000.00,
          cardColor: CardColor.green,
          createdAt: DateTime(2023, 3, 20),
        ),
      ]);
    } catch (e) {
      errorMessage = 'Ошибка загрузки карт';
    } finally {
      isLoading = false;
    }
  }
}