import 'package:flutter/material.dart';
import "../blocs/provider.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const EmailField(),
          const PasswordField(),
          Container(
            margin: const EdgeInsets.only(bottom: 30.0),
          ),
          const SubmitButton(),
        ],
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return StreamBuilder(
      stream: bloc?.email,
      // snapshot contains information about the event just
      // came though the stream
      builder: (context, snapshot) {
        return TextField(
          autofillHints: [AutofillHints.username],
          onChanged: (newValue) {
            bloc?.changeEmail(newValue);
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
}

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return StreamBuilder(
        stream: bloc?.password,
        builder: (context, snapshot) {
          return TextField(
            autofillHints: [AutofillHints.password],
            onChanged: (newValue) {
              bloc?.changePassword(newValue);
            },
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
              errorText: snapshot.error as String?,
            ),
          );
        });
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return StreamBuilder(
        stream: bloc?.submitValid,
        builder: (context, snapshot) {
          return ElevatedButton(
            onPressed: !snapshot.hasData ? null : bloc?.submit,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text("Login"),
          );
        });
  }
}
