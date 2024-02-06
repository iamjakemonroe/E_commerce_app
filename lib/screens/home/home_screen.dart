import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
// import 'package:shopping_app/constant.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SizedBox(
          width: 23,
          height: 23,
          child: Image.asset('assets/images/left.png'),
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SizedBox(
            width: 23,
            height: 23,
            child: Image.asset('assets/images/search.png'),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SizedBox(
            width: 23,
            height: 23,
            child: Image.asset('assets/images/cart.png'),
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
