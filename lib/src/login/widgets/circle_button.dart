import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;
  final Color background;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  const CircleButton(
      {Key key,
      this.label = "",
      this.background,
      this.textColor = Colors.white,
      this.borderColor,
      this.height = 55,
      this.width,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Material(
        color: this.background ?? Theme.of(context).accentColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: this.height,
            width: this.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              border: borderColor == null ? null : Border.all(color: borderColor),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                this.icon == null ? Container() : this.icon,
                Container(
                  width: 7,
                ),
                Text(
                  this.label,
                  style: TextStyle(
                    color: this.textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
