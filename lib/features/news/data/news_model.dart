import 'package:mobx/mobx.dart';

part 'news_model.g.dart';

enum NewsCategory {
  finance('Финансы'),
  economy('Экономика'),
  crypto('Криптовалюты'),
  stocks('Акции'),
  personalFinance('Личные финансы');

  const NewsCategory(this.displayName);
  final String displayName;
}

class CurrencyRate = _CurrencyRate with _$CurrencyRate;

abstract class _CurrencyRate with Store {
  @observable
  String code;

  @observable
  String name;

  @observable
  double rate;

  @observable
  double change;

  @observable
  double changePercent;

  @observable
  String symbol;

  _CurrencyRate({
    required this.code,
    required this.name,
    required this.rate,
    required this.change,
    required this.changePercent,
    required this.symbol,
  });

  bool get isPositive => change >= 0;

  CurrencyRate copyWith({
    String? code,
    String? name,
    double? rate,
    double? change,
    double? changePercent,
    String? symbol,
  }) {
    return CurrencyRate(
      code: code ?? this.code,
      name: name ?? this.name,
      rate: rate ?? this.rate,
      change: change ?? this.change,
      changePercent: changePercent ?? this.changePercent,
      symbol: symbol ?? this.symbol,
    );
  }
}

class NewsArticle = _NewsArticle with _$NewsArticle;

abstract class _NewsArticle with Store {
  @observable
  String id;

  @observable
  String title;

  @observable
  String summary;

  @observable
  String? content;

  @observable
  String? imageUrl;

  @observable
  NewsCategory category;

  @observable
  String source;

  @observable
  DateTime publishedAt;

  @observable
  String? url;

  @observable
  bool isRead;

  _NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
    this.content,
    this.imageUrl,
    required this.category,
    required this.source,
    required this.publishedAt,
    this.url,
    this.isRead = false,
  });

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(publishedAt);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} мин назад';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} ч назад';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} дн назад';
    } else {
      return '${publishedAt.day}.${publishedAt.month}.${publishedAt.year}';
    }
  }

  NewsArticle copyWith({
    String? id,
    String? title,
    String? summary,
    String? content,
    String? imageUrl,
    NewsCategory? category,
    String? source,
    DateTime? publishedAt,
    String? url,
    bool? isRead,
  }) {
    return NewsArticle(
      id: id ?? this.id,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      content: content ?? this.content,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      source: source ?? this.source,
      publishedAt: publishedAt ?? this.publishedAt,
      url: url ?? this.url,
      isRead: isRead ?? this.isRead,
    );
  }
}