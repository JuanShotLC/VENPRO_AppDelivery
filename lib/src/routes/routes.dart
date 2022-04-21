import 'package:flutter/material.dart';

import 'package:app_delivery/src/features/presentation/page_welcome/View/welcome_page.dart';
import 'package:app_delivery/src/features/presentation/page_login/View/login_page.dart';
import 'package:app_delivery/src/features/presentation/page_forgot_password/View/forgot_password_page.dart';
import 'package:app_delivery/src/features/presentation/page_sign_up/View/sign_up_page.dart';
import 'package:app_delivery/src/features/presentation/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => tabsPage()
};
