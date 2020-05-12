import 'package:flutter/material.dart';

class IconColumnWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  IconColumnWidget({
    this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    var labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E9B));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
