import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/components/title_image_detail.dart';

class DetailedBody extends StatelessWidget {
  final Product product;
  const DetailedBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                TitleImageDetail(product: product)
              ],
            ))
      ]),
    );
  }
}
