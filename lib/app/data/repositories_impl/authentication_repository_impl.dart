import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/app/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {

  final FirebaseAuth _auth;
  User? _user;
  final Completer<void> _completer = new Completer();

  AuthenticationRepositoryImpl(this._auth){
    _init();
  }

  @override
  Future<User?> get user async {
    await _completer.future;
    return _user;
  }

  void _init() async {
    _auth.authStateChanges().listen(
      (User? user) {
        if(!_completer.isCompleted){
          _completer.complete();
        }
        _user = user;
      }
    );
  }

}