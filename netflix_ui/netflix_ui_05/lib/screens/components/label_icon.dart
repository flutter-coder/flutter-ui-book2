import 'package:flutter/material.dart';

class LabelIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextStyle? style;

  const LabelIcon({
    Key? key,
    required this.icon,
    required this.label,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 5.0),
          Text(
            label,
            style: style ?? TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
