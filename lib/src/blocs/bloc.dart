import 'dart:async';
import './validators.dart';

// bloc class
class Bloc with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //  add data to the stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  // change data
  void Function(String) get changeEmail => _emailController.sink.add;
  void Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();
