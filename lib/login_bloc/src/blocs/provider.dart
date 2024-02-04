import "package:flutter/material.dart";

import './bloc.dart';

class Provider extends InheritedWidget {
  // Provider({super.key, required super.child});

  // we are passing the key and the child to the super class
  // while initiating out constructor
  Provider({required key, required Widget child})
      : super(key: key, child: child);

  final bloc = Bloc();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static Bloc? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()?.bloc;
  }
}
