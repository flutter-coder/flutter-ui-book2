import '../../models/recommend_store.dart';
import '../components/appbar_preferred_size.dart';
import 'components/bottom_title_icon.dart';
import 'components/round_border_text.dart';
import 'components/search_text_field.dart';
import 'components/store_item.dart';
import '../../theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 근처'),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.pencil), onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    // 4
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: [
                const BottomTitleIcon(title: '구인구직', iconData: FontAwesomeIcons.user),
                const BottomTitleIcon(title: '과외/클래스', iconData: FontAwesomeIcons.edit),
                const BottomTitleIcon(title: '농수산물', iconData: FontAwesomeIcons.appleAlt),
                const BottomTitleIcon(title: '부동산', iconData: FontAwesomeIcons.hotel),
                const BottomTitleIcon(title: '중고차', iconData: FontAwesomeIcons.car),
                const BottomTitleIcon(title: '전시/행사', iconData: FontAwesomeIcons.chessBishop)
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('이웃들의 추천 가게', style: textTheme().displayMedium), // TODO 07 수정
          ),
          const SizedBox(height: 20),
          Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 40)
        ],
      ),
    );
  }
}
