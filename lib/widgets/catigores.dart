import 'package:flutter/material.dart';
import 'package:sport_store/widgets/cat_items.dart';
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late Map<String, IconData> cat;

  late List<Widget> catlist;

  late int selectedCat;

  @override
  void initState() {
    super.initState();
    selectedCat = 0;
    cat = {
      "sports": Icons.sports_baseball,
      "devices": Icons.devices,
      "books": Icons.menu_book,
      "clothes": Icons.shopping_cart_outlined,
      "gaming": Icons.gamepad,
      "medicine": Icons.medical_information,
    };
  }

  @override
  Widget build(BuildContext context) {
    initCat();
    return  SingleChildScrollView(
        child: Column(
          children: [
            cats(),
            bselltxt(),
            SizedBox(
              child: CatItems(dataId: selectedCat),
            ),
          ],
        ),
    );
  }

  Row bselltxt() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 80, 0, 0),
          child: const Text(
            "Best Selling items",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  void initCat() {
    catlist = List.generate(cat.length, (index) {
      return InkWell(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 15, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: selectedCat == index ? Colors.orange : Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                cat.values.elementAt(index),
                color: selectedCat == index ? Colors.white : Colors.black,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  cat.keys.elementAt(index),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: selectedCat == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          setState(() {
            selectedCat = index;
          });
        },
      );
    });
  }

  Column cats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: catlist,
          ),
        ),
      ],
    );
  }
}
