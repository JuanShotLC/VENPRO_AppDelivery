import 'package:app_delivery/src/colors/colors.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/back_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/done_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greed,
      appBar: AppBar(
        backgroundColor: greed,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            headerText('Forgot Password', grey, FontWeight.bold, 30.0),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Plase enter your email address.You will receive a link to create a new password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                ),
              ),
            ),
            _emailInput(),
            _buttonSend(context)
          ],
        ),
      )),
    );
  }
}

Widget _emailInput() {
  return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Your Email",
          labelText: "Your Email",
          prefixIcon: Icon(Icons.email),
        ),
      ));
}

Widget _buttonSend(BuildContext context) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      onPressed: () {
        _showArleta(context);
      },
      color: bgBotton,
      child: Text(
        'Send',
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

void _showArleta(BuildContext context) {
  showAlertDialog(
      context,
      AssetImage('assets/images/lock.png'),
      'Your password has been reset',
      "You'll shorty receive an email with to new password",
      doneButton(context, "Done"));
}


// _gotoLogin(BuildContext context) {
//   Navigator.pushNamed(context, 'login');
// }
