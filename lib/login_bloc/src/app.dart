import "package:flutter/material.dart";
import "./screens/login_screen.dart";
import './blocs/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // making the provider bloc available to the child widgets
    // so now every widgit in the tree can reach reach back up to the
    // tree and get data from this provider
    return Provider(
        key: key,
        child: MaterialApp(
          title: "logged in",
          home: Scaffold(
            appBar: AppBar(
              title: const Text("Log Me In!!"),
            ),
            body: LoginScreen(),
          ),
        ));
  }
}
