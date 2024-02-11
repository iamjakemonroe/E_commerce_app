import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/models/Product.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(product.description, style: const TextStyle()),
    );
  }
}
