import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;

  const CircleButton({Key key, this.label = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(40.0),
      ),
      alignment: Alignment.center,
      child: Text(
        this.label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
