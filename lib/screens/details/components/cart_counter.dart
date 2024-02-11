import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
            iconColor: numOfItems == 1 ? Colors.grey : Colors.black87),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                if (numOfItems < 30) {
                  setState(() {
                    numOfItems++;
                  });
                }
              });
            },
            iconColor: numOfItems == 30 ? Colors.grey : Colors.black87),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {IconData? icon, required Function() press, iconColor}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry?>(EdgeInsets.zero),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
