import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

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
    return StreamBuilder(
      stream: bloc.email,
      // snapshot contains information about the event just
      // came though the stream
      builder: (context, snapshot) {
        return TextField(
          autofillHints: [AutofillHints.username],
          onChanged: (newValue) {
            bloc.changeEmail(newValue);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "you@example.com",
            labelText: "Email Address",
            errorText: snapshot.error as String?,
          ),
        );
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            autofillHints: [AutofillHints.password],
            onChanged: (newValue) {
              bloc.changePassword(newValue);
            },
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
              errorText: snapshot.error as String?,
            ),
          );
        });
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
