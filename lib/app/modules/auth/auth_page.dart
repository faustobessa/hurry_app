import 'package:flutter_modular/flutter_modular.dart';
import 'package:hurry/app/modules/auth/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:hurry/app/modules/src/auth_page/auth_screen.dart';
import 'package:hurry/app/modules/src/register_page/register_screen.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key? key, this.title = 'AuthPage'}) : super(key: key);
  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  final AuthStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              PageView(
                children: [
                  AuthScreen(
                    onPressed: () {
                      Modular.to.pushReplacementNamed('/home');
                    },
                  ),
                  RegisterScreen(),
                ],
              )
            ],
          )),
    );
  }
}
