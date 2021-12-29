import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => router.pushNamed(Routes.REGISTER), 
                child: Text('Sign Up')
              )
            ],
          ),
        )
      ),
    );
  }
}