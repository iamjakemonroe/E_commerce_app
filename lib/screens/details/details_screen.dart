import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/components/detailed_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailedBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 1,
      leading: IconButton(
        icon: SizedBox(
          width: 23,
          height: 23,
          child: Image.asset('assets/images/left.png', color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SizedBox(
            width: 23,
            height: 23,
            child: Image.asset('assets/images/search.png', color: Colors.white),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SizedBox(
            width: 23,
            height: 23,
            child: Image.asset('assets/images/cart.png', color: Colors.white),
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
