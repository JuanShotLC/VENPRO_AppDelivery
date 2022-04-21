import 'package:app_delivery/src/colors/colors.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

showAlertDialog(
  BuildContext context,
  ImageProvider<Object> imagepacth,
  String headerTitle,
  String headerSubtitle,
  Widget doneButton,
) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400,
            child: Column(
              children: [
                Image(
                  image: imagepacth,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: headerText(headerTitle, grey, FontWeight.bold, 20.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child:
                      headerText(headerSubtitle, grey, FontWeight.bold, 20.0),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}
