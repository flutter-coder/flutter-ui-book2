import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class StackIcon extends StatelessWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;
  final String? counter;

  const StackIcon({
    Key? key,
    this.imgPath,
    this.onPressed,
    this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            imgPath ?? "assets/icons/shopping-cart.svg",
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 10,
          right: 5,
          child: Container(
            width: 14,
            height: 14,
            child: Center(
              child: Text(
                "$counter",
                style: TextStyle(fontSize: 10, color: kPrimaryColor),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        )
      ],
    );
  }
}
