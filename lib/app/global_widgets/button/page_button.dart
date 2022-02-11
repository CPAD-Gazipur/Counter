import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onclick;
  const Button({
    Key? key,
    this.text = "",
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(30),
        primary: Color(
          0xff006400,
        ),
        splashFactory: InkRipple.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide(
          color: Color(
            0xff008000,
          ),
          width: 5,
        ),
      ),
      onPressed: () {
        onclick;
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
