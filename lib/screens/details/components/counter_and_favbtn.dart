import 'package:flutter/material.dart';
import 'package:shopping_app/screens/details/components/cart_counter.dart';

class CounterAndFavBtn extends StatelessWidget {
  const CounterAndFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          width: 32,
          height: 32,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFFFF6464), shape: BoxShape.circle),
          child: Image.asset(
            "assets/images/heart.png",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
