import 'package:flutter/material.dart';

class RoundBorderText extends StatelessWidget {
  RoundBorderText({Key? key, required this.title, required this.position})
      : super(key: key);

  final String title;
  final int position;

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(width: 0.5, color: Colors.grey),
        ),
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
