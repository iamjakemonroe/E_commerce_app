import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/models/Product.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Aristocratic hand bag',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        product.title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                      // const SizedBox(
                      //   height: kDefaultPadding,
                      // ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: "Price\n"),
                                TextSpan(
                                    text: '\$${product.price}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          Expanded(
                              child: Image.asset(
                            product.image,
                            fit: BoxFit.fill,
                          ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
