import 'package:mobx/mobx.dart';
import 'package:prac10/core/constants/categories.dart';

part 'transaction_model.g.dart';

class Transaction = _Transaction with _$Transaction;

abstract class _Transaction with Store {
  @observable
  String id;

  @observable
  String title;

  @observable
  String description;

  @observable
  double amount;

  @observable
  DateTime createdAt;

  @observable
  TransactionType type;

  @observable
  String category;

  _Transaction({
    required this.id,
    required this.title,
    required this.description,
    required this.amount,
    required this.createdAt,
    required this.type,
    required this.category,
  });

  Transaction copyWith({
    String? id,
    String? title,
    String? description,
    double? amount,
    DateTime? createdAt,
    TransactionType? type,
    String? category,
  }) {
    return Transaction(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      type: type ?? this.type,
      category: category ?? this.category,
    );
  }

  bool get isExpense => type == TransactionType.expense;
  bool get isIncome => type == TransactionType.income;
}