import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(
            margin: const EdgeInsets.only(bottom: 30.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "you@example.com",
        labelText: "Email Address",
      ),
    );
  }

  Widget passwordField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Password",
        labelText: "Password",
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () => {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      child: const Text("Login"),
    );
  }
}
