import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';
import 'components/rotate_image.dart';

class ContentsListScreen extends StatelessWidget {
  double _circleRadius = 110.0;
  double _centerPosterWidth = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "저장된 컨텐츠 목록",
          style: TextStyle(fontSize: 18.0),
        ),
        actions: [
          Icon(FontAwesomeIcons.search),
          SizedBox(width: 25.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image(
                image: AssetImage("assets/images/dog.jpg"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "'나만의 자동 저장' 기능",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Text("언제나 휴대폰에 시청할 콘텐츠가 있도록, "
                  "개인화된 영화와 TV 프로그램을 알아서 저장해 드립니다."),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: kButtonDarkColor,
                        radius: _circleRadius,
                      ),
                      Positioned(
                        top: _circleRadius / 2,
                        child: RotateImage(
                          imageUrl: "assets/images/les_miserables_poster.jpg",
                          degree: -20,
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        top: _circleRadius / 2,
                        child: RotateImage(
                          imageUrl: "assets/images/minari_poster.jpg",
                          degree: 20,
                        ),
                      ),
                      Positioned(
                        left: _circleRadius - (_centerPosterWidth / 2),
                        top: _circleRadius / 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image(
                            image: AssetImage(
                                "assets/images/the_book_of_fish_poster.jpg"),
                            width: _centerPosterWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: kButtonBlueColor,
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.0),
                alignment: Alignment.center,
                child: Text(
                  "설정하기",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 50.0),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: kButtonDarkColor,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(
                    "저장 가능한 콘텐츠 찾아보기",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
