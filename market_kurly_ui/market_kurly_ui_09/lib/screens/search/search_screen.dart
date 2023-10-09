import 'package:flutter/material.dart';
import '../../constants.dart';
import '../components/custom_actions.dart';
import 'components/default_search_field.dart';

class SearchScreen extends StatelessWidget {
  // 1
  final List searchKeyword = ["불고기", "닭갈비", "삼겹살", "갈비곰탕", "생새우살"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("검색"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // 2
            DefaultSearchField(),
            const SizedBox(height: 20),
            Text("인기 검색어", style: TextStyle(color: kTextColor)),
            // 3
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  child: SizedBox(
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        searchKeyword[index],
                        style: TextStyle(color: kPrimaryColor, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  thickness: 0.5,
                  height: 0,
                ),
                itemCount: searchKeyword.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
