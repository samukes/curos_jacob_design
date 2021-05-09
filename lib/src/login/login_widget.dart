import 'package:curos_jacob_design/src/login/provider/provider_page_controller.dart';
import 'package:flutter/material.dart';

import 'package:curos_jacob_design/src/login/pages/login_page_widget.dart';
import 'package:curos_jacob_design/src/login/pages/login_signin_widget.dart';
import 'package:curos_jacob_design/src/login/pages/login_signup_widget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;


  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: 1);
  }


  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/mount.jpeg",
            fit: BoxFit.cover,
          ),
          ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: [
                LoginSignupWidget(),
                LoginPageWidget(),
                LoginSigninWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
