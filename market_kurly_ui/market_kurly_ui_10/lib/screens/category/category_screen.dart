import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../components/custom_actions.dart';
import '../components/text_menu_card.dart';
import '../../models/list_category_menu.dart';
import '../../models/grid_category_menu.dart';
import 'components/extends_icon_text_card.dart';
import 'components/image_text_card.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("카테고리"),
        automaticallyImplyLeading: false,
        actions: [CustomActions()],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 55,
              child: TextMenuCard(
                title: "자주 사는 상품",
                icon: "assets/icons/right-arrow.svg",
                textColor: kPrimaryColor,
                iconColor: kPrimaryColor,
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          // 1
          SliverList(
            delegate: SliverChildListDelegate(
                // 2
                List.generate(
                    listCategoryMenuList.length,
                    (index) => ExtendsIconTextCard(
                          item: listCategoryMenuList[index],
                        ))
                // listCategoryMenuList
                //     .map((e) => ExtendsIconTextCard(item: e))
                //     .toList(),
                ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "컬리의 추천",
                style: textTheme().headline2,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 40),
            // 3
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10,
                // 4
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  // 5
                  return ImageTextCard(
                    item: gridCategoryMenuList[index],
                  );
                },
                // 6
                childCount: gridCategoryMenuList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
