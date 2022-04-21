import 'package:flutter/material.dart';
//UIS
import 'dart:ui';
// Commons Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/header_text.dart';
//Color app
import 'package:app_delivery/src/colors/colors.dart';
//Services
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ob2.png'))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: greed.withOpacity(0.5),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: headerText('DELIVERED FAST FOOD TO YOUR DOOR', grey,
                    FontWeight.bold, 45.0),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                    'Set extact location to find the right restaurant near you',
                    style: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0)),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: bgBotton,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Log In',
                          style: TextStyle(color: Colors.white, fontSize: 15.0))
                    ],
                  ),
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: bgBottonFace,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/facebook.png'),
                        width: 20.0,
                        height: 20.0,
                      ),
                      Text('Connet whith facebook',
                          style: TextStyle(color: Colors.white, fontSize: 15.0))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
