import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          child: Icon(
            Icons.add_circle,
            color: Colors.white,
            size: 50.0,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          "프로필 추가",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
