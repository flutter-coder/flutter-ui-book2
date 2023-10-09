import 'package:flutter/material.dart';
import '../../../models/home_banner.dart';
import 'box_border_text.dart';
import 'number_indicator.dart';

class KurlyBannerItem extends StatefulWidget {
  @override
  _KurlyBannerItemState createState() => _KurlyBannerItemState();
}

class _KurlyBannerItemState extends State<KurlyBannerItem> {
  // 1
  final List<HomeBanner> list = homeBannerList;
  // 2
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                // 3
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(list[index].bannerImage),
                        fit: BoxFit.cover),
                  ),
                ),
                // 4
                Positioned(
                  top: 50,
                  left: 16,
                  child: BoxBorderText(
                    title: list[index].eventTitle,
                    subTitle: list[index].eventContent,
                  ),
                ),
              ],
            );
          },
          // 5
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
        // 7
        Positioned(
          bottom: 16,
          right: 16,
          child: NumberIndicator(
            currentPage: currentPage + 1,
            length: list.length,
          ),
        )
      ],
    );
  }
}
