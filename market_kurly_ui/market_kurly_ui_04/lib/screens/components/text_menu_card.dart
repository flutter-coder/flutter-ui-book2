import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextMenuCard extends StatelessWidget {
  final String? title;
  final String? icon;
  final GestureTapCallback? press;
  final Color? textColor;
  final Color? iconColor;

  const TextMenuCard({
    Key? key,
    this.title,
    this.icon,
    this.press,
    this.textColor = Colors.black,
    this.iconColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title ?? "",
                style: TextStyle(color: textColor, fontSize: 16),
              ),
              Spacer(),
              SizedBox(
                width: 26,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    icon ?? "assets/icons/right-arrow.svg",
                    color: iconColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
