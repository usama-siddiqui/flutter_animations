import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      duration: Duration(milliseconds: 500),
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.easeIn,
      builder: (BuildContext context, double val, Widget child) {
        return Opacity(
            child: Padding(
              padding: EdgeInsets.all(val * 20.0),
              child: child,
            ),
            opacity: val);
      },
    );
  }
}
