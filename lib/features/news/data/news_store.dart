import 'dart:math';

import 'package:mobx/mobx.dart';
import 'news_model.dart';

part 'news_store.g.dart';

class NewsStore = _NewsStore with _$NewsStore;

abstract class _NewsStore with Store {
  @observable
  ObservableList<NewsArticle> newsArticles = ObservableList<NewsArticle>();

  @observable
  ObservableList<CurrencyRate> currencyRates = ObservableList<CurrencyRate>();

  @observable
  ObservableList<NewsArticle> cryptoRates = ObservableList<NewsArticle>();

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @observable
  NewsCategory selectedCategory = NewsCategory.finance;

  @observable
  String searchQuery = '';

  @observable
  bool showOnlyUnread = false;

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @computed
  List<NewsArticle> get filteredNews {
    var articles = newsArticles.where((article) =>
    article.category == selectedCategory).toList();

    if (searchQuery.isNotEmpty) {
      final query = searchQuery.toLowerCase();
      articles = articles.where((article) =>
      article.title.toLowerCase().contains(query) ||
          article.summary.toLowerCase().contains(query)).toList();
    }

    if (showOnlyUnread) {
      articles = articles.where((article) => !article.isRead).toList();
    }

    // Сортируем по дате (сначала новые)
    articles.sort((a, b) => b.publishedAt.compareTo(a.publishedAt));

    return articles;
  }

  @computed
  List<CurrencyRate> get majorCurrencies => currencyRates
      .where((currency) =>
  currency.code == 'USD' ||
      currency.code == 'EUR' ||
      currency.code == 'GBP' ||
      currency.code == 'CNY')
      .toList();

  @computed
  List<CurrencyRate> get otherCurrencies => currencyRates
      .where((currency) =>
  currency.code != 'USD' &&
      currency.code != 'EUR' &&
      currency.code != 'GBP' &&
      currency.code != 'CNY')
      .toList();

  _NewsStore() {
    _loadDemoData();
  }

  @action
  Future<void> _loadDemoData() async {
    isLoading = true;
    errorMessage = '';

    try {
      await Future.delayed(const Duration(seconds: 2));

      // Демо данные - курсы валют
      currencyRates.addAll([
        CurrencyRate(
          code: 'USD',
          name: 'Доллар США',
          rate: 92.45,
          change: 0.75,
          changePercent: 0.82,
          symbol: '\$',
        ),
        CurrencyRate(
          code: 'EUR',
          name: 'Евро',
          rate: 99.80,
          change: -0.32,
          changePercent: -0.32,
          symbol: '€',
        ),
        CurrencyRate(
          code: 'GBP',
          name: 'Фунт стерлингов',
          rate: 115.20,
          change: 1.10,
          changePercent: 0.96,
          symbol: '£',
        ),
        CurrencyRate(
          code: 'CNY',
          name: 'Китайский юань',
          rate: 12.75,
          change: 0.05,
          changePercent: 0.39,
          symbol: '¥',
        ),
        CurrencyRate(
          code: 'JPY',
          name: 'Японская иена',
          rate: 0.62,
          change: -0.01,
          changePercent: -1.59,
          symbol: '¥',
        ),
        CurrencyRate(
          code: 'CHF',
          name: 'Швейцарский франк',
          rate: 102.30,
          change: 0.45,
          changePercent: 0.44,
          symbol: 'Fr',
        ),
      ]);

      // Демо данные - новости
      newsArticles.addAll([
        NewsArticle(
          id: '1',
          title: 'ЦБ РФ сохранил ключевую ставку на уровне 16%',
          summary: 'Банк России принял решение сохранить ключевую ставку на уровне 16% годовых.',
          content: 'Центральный банк Российской Федерации на заседании совета директоров принял решение сохранить ключевую ставку на уровне 16% годовых. Такое решение было ожидаемо большинством аналитиков.',
          imageUrl: 'https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?w=400&h=250&fit=crop',
          category: NewsCategory.finance,
          source: 'РБК',
          publishedAt: DateTime.now().subtract(const Duration(hours: 2)),
          url: 'https://example.com/news/1',
        ),
        NewsArticle(
          id: '2',
          title: 'Курс доллара обновил максимум с начала года',
          summary: 'Доллар США на Московской бирже подорожал до 93 рублей.',
          content: 'Курс доллара США к рублю на Московской бирже в ходе торгов поднялся до 93 рублей, что стало максимальным значением с начала текущего года.',
          imageUrl: 'https://images.unsplash.com/photo-1604594849809-dfedbc827105?w=400&h=250&fit=crop',
          category: NewsCategory.finance,
          source: 'Коммерсантъ',
          publishedAt: DateTime.now().subtract(const Duration(hours: 5)),
          url: 'https://example.com/news/2',
        ),
        NewsArticle(
          id: '3',
          title: 'Биткоин превысил \$50,000',
          summary: 'Крупнейшая криптовалюта впервые с 2021 года преодолела отметку в \$50,000.',
          content: 'Капитализация биткоина превысила \$1 триллион после роста цены выше \$50,000. Аналитики связывают рост с одобрением биткоин-ETF в США.',
          imageUrl: 'https://images.unsplash.com/photo-1518546305927-5a555bb7020d?w=400&h=250&fit=crop',
          category: NewsCategory.crypto,
          source: 'CoinDesk',
          publishedAt: DateTime.now().subtract(const Duration(hours: 8)),
          url: 'https://example.com/news/3',
        ),
        NewsArticle(
          id: '4',
          title: 'Инфляция в РФ замедлилась до 7,2%',
          summary: 'Годовая инфляция в России в январе замедлилась до 7,2%.',
          content: 'По данным Росстата, годовая инфляция в России в январе замедлилась до 7,2% после 7,4% в декабре. Базовая инфляция составила 6,8%.',
          imageUrl: 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=400&h=250&fit=crop',
          category: NewsCategory.economy,
          source: 'Интерфакс',
          publishedAt: DateTime.now().subtract(const Duration(days: 1)),
          url: 'https://example.com/news/4',
        ),
        NewsArticle(
          id: '5',
          title: 'Советы по накоплению на первоначальный взгляд',
          summary: 'Эксперты рассказали, как эффективно копить на жилье в текущих условиях.',
          content: 'Финансовые консультанты рекомендуют откладывать не менее 20% дохода, использовать программы льготной ипотеки и рассматривать альтернативные варианты инвестиций.',
          imageUrl: 'https://images.unsplash.com/photo-1553877522-43269d4ea984?w=400&h=250&fit=crop',
          category: NewsCategory.personalFinance,
          source: 'Финансы.ru',
          publishedAt: DateTime.now().subtract(const Duration(days: 2)),
          url: 'https://example.com/news/5',
        ),
        NewsArticle(
          id: '6',
          title: 'Акции Сбербанка выросли на 3%',
          summary: 'Ценные бумаги Сбербанка показали лучшую динамику среди голубых фишек.',
          content: 'Акции ПАО Сбербанк на Московской бирже подорожали на 3% после публикации сильных отчетных результатов за четвертый квартал.',
          imageUrl: 'https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=400&h=250&fit=crop',
          category: NewsCategory.stocks,
          source: 'Ведомости',
          publishedAt: DateTime.now().subtract(const Duration(days: 3)),
          url: 'https://example.com/news/6',
        ),
      ]);

    } catch (e) {
      errorMessage = 'Ошибка загрузки данных';
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> refreshData() async {
    isLoading = true;
    errorMessage = '';

    try {
      await Future.delayed(const Duration(seconds: 3));
      // В реальном приложении здесь будет обновление данных с API

      // Обновляем курсы валют (демо - случайное изменение)
      for (var i = 0; i < currencyRates.length; i++) {
        final change = (Random().nextDouble() * 2 - 1) * 0.5;
        final currentRate = currencyRates[i].rate;
        final newRate = currentRate + change;
        final changePercent = (change / currentRate) * 100;

        currencyRates[i] = currencyRates[i].copyWith(
          rate: double.parse(newRate.toStringAsFixed(4)),
          change: double.parse(change.toStringAsFixed(4)),
          changePercent: double.parse(changePercent.toStringAsFixed(2)),
        );
      }
    } catch (e) {
      errorMessage = 'Ошибка обновления данных';
    } finally {
      isLoading = false;
    }
  }

  @action
  void setCategory(NewsCategory category) {
    selectedCategory = category;
  }

  @action
  void setSearchQuery(String query) {
    searchQuery = query;
  }

  @action
  void toggleShowOnlyUnread() {
    showOnlyUnread = !showOnlyUnread;
  }

  @action
  void markAsRead(String articleId) {
    final index = newsArticles.indexWhere((article) => article.id == articleId);
    if (index != -1) {
      newsArticles[index] = newsArticles[index].copyWith(isRead: true);
    }
  }

  @action
  void markAllAsRead() {
    for (var i = 0; i < newsArticles.length; i++) {
      if (!newsArticles[i].isRead) {
        newsArticles[i] = newsArticles[i].copyWith(isRead: true);
      }
    }
  }

  @action
  void clearError() {
    errorMessage = '';
  }
}