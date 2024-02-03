import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';

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
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<String> categories = ["Hand bag", "Jewerries", "Footwear", "Dresses"];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(
              index, categories, selectedIndex, _updateSelectedIndex),
        ));
  }

  void _updateSelectedIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}

Widget buildCategory(int index, List<String> categories, int selectedIndex,
    Function(int) updateSelectedIndex) {
  return GestureDetector(
    onTap: () {
      updateSelectedIndex(index);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
              color: selectedIndex == index ? kTextColor : kTextLightColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 2,
            width: 30,
            color: selectedIndex == index ? Colors.black : Colors.transparent,
            margin: const EdgeInsets.only(top: 3),
          )
        ],
      ),
    ),
  );
}
