import 'package:curos_jacob_design/src/login/provider/provider_page_controller.dart';
import 'package:flutter/material.dart';

import 'package:curos_jacob_design/src/login/widgets/circle_button.dart';
import 'package:curos_jacob_design/src/login/widgets/custom_text_field_widget.dart';

class LoginSignupWidget extends StatefulWidget {
  const LoginSignupWidget({Key key}) : super(key: key);

  @override
  _LoginSignupWidgetState createState() => _LoginSignupWidgetState();
}

class _LoginSignupWidgetState extends State<LoginSignupWidget> {
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
            size: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
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
          CustomTextFieldWidget(
            label: "Confirm password",
            hint: "***************",
          ),
          Container(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              ProviderPageController.of(context).animateToPage(2);
            },
            child: Container(
              width: double.infinity,
              child: Text(
                "Already have an account?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Container(
            height: 40,
          ),
          CircleButton(label: "SIGN UP"),
        ],
      ),
    );
  }
}
