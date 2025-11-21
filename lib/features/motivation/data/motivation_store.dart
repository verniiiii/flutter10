import 'package:mobx/mobx.dart';
import 'motivation_model.dart';

part 'motivation_store.g.dart';

class MotivationStore = _MotivationStore with _$MotivationStore;

abstract class _MotivationStore with Store {
  @observable
  ObservableList<MotivationContent> allContent = ObservableList<MotivationContent>();

  @observable
  MotivationContent? currentContent;

  @observable
  ContentType selectedType = ContentType.quote;

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @observable
  ObservableList<MotivationContent> favorites = ObservableList<MotivationContent>();

  @computed
  List<MotivationContent> get filteredContent => allContent
      .where((content) => content.type == selectedType)
      .toList();

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  _MotivationStore() {
    _initializeContent();
  }

  @action
  void _initializeContent() {
    // Цитаты
    allContent.addAll([
      MotivationContent(
        id: '1',
        text: 'Единственный способ сделать что-то очень хорошо — любить то, что ты делаешь.',
        author: 'Стив Джобс',
        type: ContentType.quote,
        category: 'Успех',
      ),
      MotivationContent(
        id: '2',
        text: 'Не откладывай на завтра то, что можешь сделать сегодня.',
        author: 'Бенджамин Франклин',
        type: ContentType.quote,
        category: 'Продуктивность',
      ),
      MotivationContent(
        id: '3',
        text: 'Успех — это способность идти от failure к failure без потери энтузиазма.',
        author: 'Уинстон Черчилль',
        type: ContentType.quote,
        category: 'Настойчивость',
      ),
      MotivationContent(
        id: '4',
        text: 'Лучший способ предсказать будущее — создать его.',
        author: 'Питер Друкер',
        type: ContentType.quote,
        category: 'Действие',
      ),
      MotivationContent(
        id: '5',
        text: 'Ваше время ограничено, не тратьте его, живя чужой жизнью.',
        author: 'Стив Джобс',
        type: ContentType.quote,
        category: 'Саморазвитие',
      ),
    ]);

    // Аффирмации
    allContent.addAll([
      MotivationContent(
        id: '6',
        text: 'Я достоин успеха и процветания',
        type: ContentType.affirmation,
        category: 'Уверенность',
      ),
      MotivationContent(
        id: '7',
        text: 'Каждый день я становлюсь лучше',
        type: ContentType.affirmation,
        category: 'Рост',
      ),
      MotivationContent(
        id: '8',
        text: 'Я привлекаю изобилие в свою жизнь',
        type: ContentType.affirmation,
        category: 'Изобилие',
      ),
      MotivationContent(
        id: '9',
        text: 'Мои мысли создают мою реальность',
        type: ContentType.affirmation,
        category: 'Сознание',
      ),
      MotivationContent(
        id: '10',
        text: 'Я благодарен за все, что имею',
        type: ContentType.affirmation,
        category: 'Благодарность',
      ),
    ]);

    // Советы
    allContent.addAll([
      MotivationContent(
        id: '11',
        text: 'Начните свой день с 15 минут медитации',
        type: ContentType.tip,
        category: 'Утро',
      ),
      MotivationContent(
        id: '12',
        text: 'Записывайте 3 вещи, за которые вы благодарны каждый день',
        type: ContentType.tip,
        category: 'Привычки',
      ),
      MotivationContent(
        id: '13',
        text: 'Разбейте большие цели на маленькие шаги',
        type: ContentType.tip,
        category: 'Планирование',
      ),
      MotivationContent(
        id: '14',
        text: 'Проводите время на природе хотя бы 20 минут в день',
        type: ContentType.tip,
        category: 'Здоровье',
      ),
      MotivationContent(
        id: '15',
        text: 'Читайте 15 минут перед сном вместо телефона',
        type: ContentType.tip,
        category: 'Отдых',
      ),
    ]);

    // Устанавливаем случайный контент при инициализации
    _getRandomContent();
  }

  @action
  void _getRandomContent() {
    final availableContent = filteredContent;
    if (availableContent.isNotEmpty) {
      final randomIndex = DateTime.now().millisecondsSinceEpoch % availableContent.length;
      currentContent = availableContent[randomIndex];
    }
  }

  @action
  void getNewContent() {
    _getRandomContent();
  }

  @action
  void setContentType(ContentType type) {
    selectedType = type;
    _getRandomContent();
  }

  @action
  void toggleFavorite() {
    if (currentContent != null) {
      final index = allContent.indexWhere((content) => content.id == currentContent!.id);
      if (index != -1) {
        final updatedContent = currentContent!.copyWith(isFavorite: !currentContent!.isFavorite);
        allContent[index] = updatedContent;
        currentContent = updatedContent;

        // Обновляем список избранного
        if (updatedContent.isFavorite) {
          if (!favorites.any((fav) => fav.id == updatedContent.id)) {
            favorites.add(updatedContent);
          }
        } else {
          favorites.removeWhere((fav) => fav.id == updatedContent.id);
        }
      }
    }
  }

  @action
  void clearError() {
    errorMessage = '';
  }
}