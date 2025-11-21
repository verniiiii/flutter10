// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalculatorStore on _CalculatorStore, Store {
  late final _$currentInputAtom = Atom(
    name: '_CalculatorStore.currentInput',
    context: context,
  );

  @override
  String get currentInput {
    _$currentInputAtom.reportRead();
    return super.currentInput;
  }

  @override
  set currentInput(String value) {
    _$currentInputAtom.reportWrite(value, super.currentInput, () {
      super.currentInput = value;
    });
  }

  late final _$expressionAtom = Atom(
    name: '_CalculatorStore.expression',
    context: context,
  );

  @override
  String get expression {
    _$expressionAtom.reportRead();
    return super.expression;
  }

  @override
  set expression(String value) {
    _$expressionAtom.reportWrite(value, super.expression, () {
      super.expression = value;
    });
  }

  late final _$historyAtom = Atom(
    name: '_CalculatorStore.history',
    context: context,
  );

  @override
  ObservableList<String> get history {
    _$historyAtom.reportRead();
    return super.history;
  }

  @override
  set history(ObservableList<String> value) {
    _$historyAtom.reportWrite(value, super.history, () {
      super.history = value;
    });
  }

  late final _$shouldResetInputAtom = Atom(
    name: '_CalculatorStore.shouldResetInput',
    context: context,
  );

  @override
  bool get shouldResetInput {
    _$shouldResetInputAtom.reportRead();
    return super.shouldResetInput;
  }

  @override
  set shouldResetInput(bool value) {
    _$shouldResetInputAtom.reportWrite(value, super.shouldResetInput, () {
      super.shouldResetInput = value;
    });
  }

  late final _$_CalculatorStoreActionController = ActionController(
    name: '_CalculatorStore',
    context: context,
  );

  @override
  void appendNumber(String number) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.appendNumber',
    );
    try {
      return super.appendNumber(number);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void appendDecimal() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.appendDecimal',
    );
    try {
      return super.appendDecimal();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperation(String operation) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.setOperation',
    );
    try {
      return super.setOperation(operation);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculate() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.calculate',
    );
    try {
      return super.calculate();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.clear',
    );
    try {
      return super.clear();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearAll() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.clearAll',
    );
    try {
      return super.clearAll();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSign() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.toggleSign',
    );
    try {
      return super.toggleSign();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void percentage() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.percentage',
    );
    try {
      return super.percentage();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteLast() {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction(
      name: '_CalculatorStore.deleteLast',
    );
    try {
      return super.deleteLast();
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentInput: ${currentInput},
expression: ${expression},
history: ${history},
shouldResetInput: ${shouldResetInput}
    ''';
  }
}
