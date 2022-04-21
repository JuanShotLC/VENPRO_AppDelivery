import 'dart:io';

import 'package:flutter/material.dart';
import 'package:app_delivery/src/colors/colors.dart';

import 'package:app_delivery/src/features/presentation/commons_widgets/done_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/alert_dialog.dart';

import 'package:app_delivery/src/features/presentation/tabs/tab_notifications/View/notifications_tab.dart';

import 'package:app_delivery/src/features/presentation/tabs/tab_explore/View/explore_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs/tab_my_order/View/my_order_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs/tab_profile/View/profile_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs/tab_support/View/support_tab.dart';

class tabsPage extends StatefulWidget {
  tabsPage({Key? key}) : super(key: key);

  @override
  _tabsPageState createState() => _tabsPageState();
}

class _tabsPageState extends State<tabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _perdirLocation(context);
    });
  }

  List<Widget> _WidgetOptions = [
    ExploreTab(),
    suppotTab(),
    MyOrderTab(),
    notificatiTab(),
    profileTba()
  ];
  int _selectedItemIndex = 0;
  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _WidgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _buttonNavigationBar(context),
    );
  }

  Widget _buttonNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showSelectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          title: Text('Explore'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.forum_outlined),
          title: Text('Support'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_mall_outlined),
          title: Text('My Orders'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          title: Text('Notifications'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text('Profile'),
        )
      ],
    );
  }

  Future _perdirLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        AssetImage('assets/images/location.png'),
        'Enabling location',
        'Please allow to use your location to show nearby restaurant on the map.',
        _doneButton(context, "Enable location"));
  }

  Widget _doneButton(BuildContext context, String LabelButton) {
    return Container(
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          print('Enable location');
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
}
