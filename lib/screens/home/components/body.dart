import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/models/Product.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text('Women',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ))),
        const Categories(),
        const ProductCard()
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 160,
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(16)),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            products[0].title,
            style: const TextStyle(color: kTextLightColor),
          ),
        ),
        const Text(
          "\$234",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
