import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              icon: Image.asset(
                'assets/images/cart.png',
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(product.color),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)))),
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
