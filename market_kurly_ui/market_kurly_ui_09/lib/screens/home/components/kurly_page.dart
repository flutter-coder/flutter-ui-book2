import 'package:flutter/material.dart';
import '../../../theme.dart';
import 'kurly_banner_item.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';
// import 상대 위치 사용

class KurlyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // 1
        SizedBox(
          height: 335,
          child: KurlyBannerItem(),
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 16),
          child: Text("이 상품 어때요?", style: textTheme().headline1),
        ),
        // 2
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 150,
                child: ProductItem(
                  product: productList[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
