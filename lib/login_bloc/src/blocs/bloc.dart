import 'dart:async';
import './validators.dart';
import 'package:rxdart/rxdart.dart';

// bloc class
class Bloc with Validators {
  // BehaviorSubject is like the like the StreamController but
  // with extra features, like retrieving the last data on the
  //  stream, which is not possible by the stream controller
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //  add data to the stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (email_value, password_value) => true);

  // change data
  void Function(String) get changeEmail => _emailController.sink.add;
  void Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print("valid email $validEmail");
    print("valid password $validPassword");
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

// this line will make our block globally available to the whole app
// final bloc = Bloc();
