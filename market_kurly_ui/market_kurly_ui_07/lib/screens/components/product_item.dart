import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../theme.dart';
import '../../string_extensions.dart';
import '../../models/product_details_arguments.dart';
import '../details/details_screen.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;

  const ProductItem(
      {Key? key,
      required this.product,
      this.lineChange = false,
      this.textContainerHeight = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 2
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments: ProductDetailsArguments(product: product),
              );
            },
            child: Image.network(
              product.imageUrl ?? "assets/images/kurly_banner_0.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        // 3
        Container(
          height: textContainerHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "${product.title} ${lineChange == true ? "\n" : ""}",
                    style: textTheme().subtitle1),
                TextSpan(
                  text: " ${product.discount}% ",
                  style: textTheme().headline2?.copyWith(color: Colors.red),
                ),
                TextSpan(
                    text: discountPrice(
                        product.price ?? 0, product.discount ?? 0),
                    style: textTheme().headline2),
                // 4
                TextSpan(
                  text: "${product.price.toString().numberFormat()}원",
                  style: textTheme().bodyText2?.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
              ]),
            ),
          ),
        )
      ],
    );
  }

  // 5
  String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    return "${discountPrice.toString().numberFormat()}원 ";
  }
}
