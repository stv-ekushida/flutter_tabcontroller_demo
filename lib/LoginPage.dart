import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  TextStyle style = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'メールアドレス',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'パスワード',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xff01A0c7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        child: Text(
          'ログイン',
          textAlign: TextAlign.center,
          style: style.copyWith(color: Colors.white,
          fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155,
                  child: Image.asset('images/logo.png',
                      fit:BoxFit.contain),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButton,
                SizedBox(height: 15.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
