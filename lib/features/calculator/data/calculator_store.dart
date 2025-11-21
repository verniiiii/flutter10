import 'package:mobx/mobx.dart';

part 'calculator_store.g.dart';

class CalculatorStore = _CalculatorStore with _$CalculatorStore;

abstract class _CalculatorStore with Store {
  @observable
  String currentInput = '0';

  @observable
  String expression = '';

  @observable
  ObservableList<String> history = ObservableList<String>();

  @observable
  bool shouldResetInput = false;

  @action
  void appendNumber(String number) {
    if (shouldResetInput) {
      currentInput = number;
      shouldResetInput = false;
    } else {
      if (currentInput == '0') {
        currentInput = number;
      } else {
        currentInput += number;
      }
    }
  }

  @action
  void appendDecimal() {
    if (shouldResetInput) {
      currentInput = '0.';
      shouldResetInput = false;
    } else if (!currentInput.contains('.')) {
      currentInput += '.';
    }
  }

  @action
  void setOperation(String operation) {
    if (shouldResetInput) {
      expression = '$currentInput $operation ';
      shouldResetInput = false;
    } else {
      expression = '$expression$currentInput $operation ';
      currentInput = '0';
    }
  }

  @action
  void calculate() {
    if (expression.isEmpty) return;

    final fullExpression = '$expression$currentInput';
    final parts = fullExpression.split(' ');

    if (parts.length != 3) return;

    final num1 = double.tryParse(parts[0]);
    final operator = parts[1];
    final num2 = double.tryParse(parts[2]);

    if (num1 == null || num2 == null) return;

    double result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '×':
        result = num1 * num2;
        break;
      case '÷':
        result = num1 / num2;
        break;
      default:
        return;
    }

    // Добавляем в историю
    final historyEntry = '$fullExpression = ${result.toStringAsFixed(2)}';
    history.insert(0, historyEntry);
    if (history.length > 10) {
      history.removeLast();
    }

    // Обновляем состояние
    currentInput = result.toStringAsFixed(2).replaceAll(RegExp(r'\.0$'), '');
    expression = '';
    shouldResetInput = true;
  }

  @action
  void clear() {
    currentInput = '0';
    expression = '';
  }

  @action
  void clearAll() {
    currentInput = '0';
    expression = '';
    history.clear();
  }

  @action
  void toggleSign() {
    if (currentInput != '0') {
      if (currentInput.startsWith('-')) {
        currentInput = currentInput.substring(1);
      } else {
        currentInput = '-$currentInput';
      }
    }
  }

  @action
  void percentage() {
    final value = double.tryParse(currentInput);
    if (value != null) {
      currentInput = (value / 100).toString();
      shouldResetInput = true;
    }
  }

  @action
  void deleteLast() {
    if (currentInput.length > 1) {
      currentInput = currentInput.substring(0, currentInput.length - 1);
    } else {
      currentInput = '0';
    }
  }
}