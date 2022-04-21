import 'package:flutter/material.dart';

class notificatiTab extends StatefulWidget {
  notificatiTab({Key? key}) : super(key: key);

  @override
  _notificatiTabState createState() => _notificatiTabState();
}

class _notificatiTabState extends State<notificatiTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Notificati'),
      ),
    );
  }
}
