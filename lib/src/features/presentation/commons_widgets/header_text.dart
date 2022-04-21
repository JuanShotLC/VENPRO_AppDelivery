import 'package:app_delivery/src/colors/colors.dart';
import 'package:flutter/cupertino.dart';

Widget headerText(
    String texto, Color color, FontWeight fontWeight, double fontSize) {
  return Text(texto,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize));
}
