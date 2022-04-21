import 'dart:ui';

import 'package:app_delivery/src/colors/colors.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                  width: double.infinity,
                  height: 350.0,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/im2.png')),
              Container(
                child: backButton(context, Colors.white),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Welcome back!",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor)),
                    Text("Login to your account",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: gris)),
                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: GestureDetector(
                        onDoubleTap: () {
                          Navigator.pushNamed(context, 'forgot-password');
                        },
                        child: Text("Forgot your password?",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'sign-up');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: gris)),
                              Text("Sign up",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: Theme.of(context).accentColor)),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Email",
          labelText: "Email",
          prefixIcon: Icon(Icons.email),
        ),
      ));
}

Widget _passwordInput() {
  return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Password",
          labelText: "Password",
          prefixIcon: Icon(Icons.password),
        ),
      ));
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'tabs');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: bgBotton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Log In', style: TextStyle(color: Colors.white, fontSize: 17.0))
        ],
      ),
    ),
  );
}
