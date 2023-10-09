import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';
import 'components/add_card.dart';
import 'components/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "MODU PLAY",
          style: kTitleTextStyle,
        ),
        actions: [
          Icon(FontAwesomeIcons.pen, size: 18.0),
          const SizedBox(width: 12.0)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "모두의플레이를 시청할 프로필을 선택하세요.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              // 1
              child: Wrap(
                spacing: 25.0,
                children: [
                  ProfileCard(),
                  AddCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
