import "package:flutter/material.dart";
import "./screens/login_screen.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "logged in",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Log Me In!!"),
          ),
          body: const LoginScreen(),
        ));
  }
}
