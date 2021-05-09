import 'package:curos_jacob_design/src/login/provider/provider_page_controller.dart';
import 'package:curos_jacob_design/src/login/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: Theme.of(context).accentColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.headset_mic,
            size: 50.0,
            color: Colors.white,
          ),
          Container(
            height: 25,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              children: [
                TextSpan(
                  text: "Awesome",
                ),
                TextSpan(
                  text: "App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
          ),
          CircleButton(
            label: "SIGN UP",
            onTap: () {
              ProviderPageController.of(context).animateToPage(0);
            },
            borderColor: Colors.white,
          ),
          Container(
            height: 25,
          ),
          CircleButton(
            label: "LOGIN",
            background: Colors.white,
            onTap: () {
              ProviderPageController.of(context).animateToPage(2);
            },
            textColor: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
