import 'package:flutter/material.dart';
import '../../../models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {
  final GridCategoryMenu item;

  ImageTextCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      // 1
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      // 2
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          // 3
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(item.image), fit: BoxFit.cover),
              ),
            ),
          ),
          // 4
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  item.title,
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
