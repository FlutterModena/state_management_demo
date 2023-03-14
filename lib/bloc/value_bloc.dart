import 'package:flutter/material.dart';

class ValueBloc extends InheritedWidget {
  final double value;

  const ValueBloc({
    super.key,
    required this.value,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant ValueBloc oldWidget) {
    return oldWidget.value != value;
  }

  static ValueBloc of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<ValueBloc>()!;
  }

  static ValueBloc watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ValueBloc>()!;
  }
}