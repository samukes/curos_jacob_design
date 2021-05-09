import 'package:curos_jacob_design/src/login/widgets/circle_button.dart';
import 'package:flutter/material.dart';

import 'package:curos_jacob_design/src/login/widgets/custom_text_field_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginSigninWidget extends StatefulWidget {
  const LoginSigninWidget({Key key}) : super(key: key);

  @override
  _LoginSigninWidgetState createState() => _LoginSigninWidgetState();
}

class _LoginSigninWidgetState extends State<LoginSigninWidget> {
  Widget _lineTextLine() {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "OR CONNECT WITH",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.headset_mic,
            size: 50.0,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 20,
          ),
          CustomTextFieldWidget(
            label: "E-mail",
            hint: "example@mail.com",
          ),
          Container(
            height: 20,
          ),
          CustomTextFieldWidget(
            label: "Password",
            hint: "***************",
          ),
          Container(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Forgot password?",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor),
            ),
          ),
          Container(
            height: 20,
          ),
          CircleButton(label: "SIGN UP"),
          Container(
            height: 20,
          ),
          _lineTextLine(),
          Container(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: CircleButton(
                  background: Colors.blue[800],
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 14,
                  ),
                  label: "FACEBOOK",
                ),
              ),
              Container(
                width: 20,
              ),
              Expanded(
                child: CircleButton(
                  background: Colors.red[700],
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 14,
                  ),
                  label: "GOOGLE",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
