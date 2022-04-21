import 'package:app_delivery/src/colors/colors.dart';
import 'package:flutter/material.dart';

Widget doneButton(BuildContext context, String LabelButton) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      color: bgBotton,
      child: Text(
        LabelButton,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}
