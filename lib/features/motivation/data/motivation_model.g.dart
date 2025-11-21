// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motivation_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MotivationContent on _MotivationContent, Store {
  late final _$idAtom = Atom(name: '_MotivationContent.id', context: context);

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

  late final _$textAtom = Atom(
    name: '_MotivationContent.text',
    context: context,
  );

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  late final _$authorAtom = Atom(
    name: '_MotivationContent.author',
    context: context,
  );

  @override
  String? get author {
    _$authorAtom.reportRead();
    return super.author;
  }

  @override
  set author(String? value) {
    _$authorAtom.reportWrite(value, super.author, () {
      super.author = value;
    });
  }

  late final _$typeAtom = Atom(
    name: '_MotivationContent.type',
    context: context,
  );

  @override
  ContentType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(ContentType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  late final _$categoryAtom = Atom(
    name: '_MotivationContent.category',
    context: context,
  );

  @override
  String get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(String value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$isFavoriteAtom = Atom(
    name: '_MotivationContent.isFavorite',
    context: context,
  );

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
text: ${text},
author: ${author},
type: ${type},
category: ${category},
isFavorite: ${isFavorite}
    ''';
  }
}
