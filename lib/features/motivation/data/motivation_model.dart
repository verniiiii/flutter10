import 'package:mobx/mobx.dart';

part 'motivation_model.g.dart';

enum ContentType {
  quote('Цитата'),
  affirmation('Аффирмация'),
  tip('Совет');

  const ContentType(this.displayName);
  final String displayName;
}

class MotivationContent = _MotivationContent with _$MotivationContent;

abstract class _MotivationContent with Store {
  @observable
  String id;

  @observable
  String text;

  @observable
  String? author;

  @observable
  ContentType type;

  @observable
  String category;

  @observable
  bool isFavorite;

  _MotivationContent({
    required this.id,
    required this.text,
    this.author,
    required this.type,
    required this.category,
    this.isFavorite = false,
  });

  MotivationContent copyWith({
    String? id,
    String? text,
    String? author,
    ContentType? type,
    String? category,
    bool? isFavorite,
  }) {
    return MotivationContent(
      id: id ?? this.id,
      text: text ?? this.text,
      author: author ?? this.author,
      type: type ?? this.type,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}