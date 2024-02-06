import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
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
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color"),
                              Row(
                                children: [
                                  ColorSelect(
                                    color: Color(0xFF356C95),
                                    isSelected: true,
                                  ),
                                  ColorSelect(color: Color(0xFFF8C078)),
                                  ColorSelect(color: Color(0xFFA29B9B)),
                                ],
                              ),
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(color: kTextColor),
                              children: [
                                const TextSpan(text: 'Size'),
                                TextSpan(
                                  text: '${product.size}',
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TitleImageDetail(product: product)
              ],
            ))
      ]),
    );
  }
}

class ColorSelect extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorSelect({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
