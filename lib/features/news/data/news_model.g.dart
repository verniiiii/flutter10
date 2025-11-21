// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CurrencyRate on _CurrencyRate, Store {
  late final _$codeAtom = Atom(name: '_CurrencyRate.code', context: context);

  @override
  String get code {
    _$codeAtom.reportRead();
    return super.code;
  }

  @override
  set code(String value) {
    _$codeAtom.reportWrite(value, super.code, () {
      super.code = value;
    });
  }

  late final _$nameAtom = Atom(name: '_CurrencyRate.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$rateAtom = Atom(name: '_CurrencyRate.rate', context: context);

  @override
  double get rate {
    _$rateAtom.reportRead();
    return super.rate;
  }

  @override
  set rate(double value) {
    _$rateAtom.reportWrite(value, super.rate, () {
      super.rate = value;
    });
  }

  late final _$changeAtom = Atom(
    name: '_CurrencyRate.change',
    context: context,
  );

  @override
  double get change {
    _$changeAtom.reportRead();
    return super.change;
  }

  @override
  set change(double value) {
    _$changeAtom.reportWrite(value, super.change, () {
      super.change = value;
    });
  }

  late final _$changePercentAtom = Atom(
    name: '_CurrencyRate.changePercent',
    context: context,
  );

  @override
  double get changePercent {
    _$changePercentAtom.reportRead();
    return super.changePercent;
  }

  @override
  set changePercent(double value) {
    _$changePercentAtom.reportWrite(value, super.changePercent, () {
      super.changePercent = value;
    });
  }

  late final _$symbolAtom = Atom(
    name: '_CurrencyRate.symbol',
    context: context,
  );

  @override
  String get symbol {
    _$symbolAtom.reportRead();
    return super.symbol;
  }

  @override
  set symbol(String value) {
    _$symbolAtom.reportWrite(value, super.symbol, () {
      super.symbol = value;
    });
  }

  @override
  String toString() {
    return '''
code: ${code},
name: ${name},
rate: ${rate},
change: ${change},
changePercent: ${changePercent},
symbol: ${symbol}
    ''';
  }
}

mixin _$NewsArticle on _NewsArticle, Store {
  late final _$idAtom = Atom(name: '_NewsArticle.id', context: context);

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$titleAtom = Atom(name: '_NewsArticle.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$summaryAtom = Atom(
    name: '_NewsArticle.summary',
    context: context,
  );

  @override
  String get summary {
    _$summaryAtom.reportRead();
    return super.summary;
  }

  @override
  set summary(String value) {
    _$summaryAtom.reportWrite(value, super.summary, () {
      super.summary = value;
    });
  }

  late final _$contentAtom = Atom(
    name: '_NewsArticle.content',
    context: context,
  );

  @override
  String? get content {
    _$contentAtom.reportRead();
    return super.content;
  }

  @override
  set content(String? value) {
    _$contentAtom.reportWrite(value, super.content, () {
      super.content = value;
    });
  }

  late final _$imageUrlAtom = Atom(
    name: '_NewsArticle.imageUrl',
    context: context,
  );

  @override
  String? get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String? value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  late final _$categoryAtom = Atom(
    name: '_NewsArticle.category',
    context: context,
  );

  @override
  NewsCategory get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(NewsCategory value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$sourceAtom = Atom(name: '_NewsArticle.source', context: context);

  @override
  String get source {
    _$sourceAtom.reportRead();
    return super.source;
  }

  @override
  set source(String value) {
    _$sourceAtom.reportWrite(value, super.source, () {
      super.source = value;
    });
  }

  late final _$publishedAtAtom = Atom(
    name: '_NewsArticle.publishedAt',
    context: context,
  );

  @override
  DateTime get publishedAt {
    _$publishedAtAtom.reportRead();
    return super.publishedAt;
  }

  @override
  set publishedAt(DateTime value) {
    _$publishedAtAtom.reportWrite(value, super.publishedAt, () {
      super.publishedAt = value;
    });
  }

  late final _$urlAtom = Atom(name: '_NewsArticle.url', context: context);

  @override
  String? get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String? value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  late final _$isReadAtom = Atom(name: '_NewsArticle.isRead', context: context);

  @override
  bool get isRead {
    _$isReadAtom.reportRead();
    return super.isRead;
  }

  @override
  set isRead(bool value) {
    _$isReadAtom.reportWrite(value, super.isRead, () {
      super.isRead = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
title: ${title},
summary: ${summary},
content: ${content},
imageUrl: ${imageUrl},
category: ${category},
source: ${source},
publishedAt: ${publishedAt},
url: ${url},
isRead: ${isRead}
    ''';
  }
}
