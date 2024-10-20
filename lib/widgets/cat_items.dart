import 'package:flutter/material.dart';
import 'package:sport_store/core/routes/routes_name.dart';
import 'package:sport_store/presentation/data.dart';
class CatItems extends StatelessWidget {
  final int dataId;
  const CatItems({super.key, required this.dataId});

  @override
  Widget build(BuildContext context) {
    return catListView(context);
  }

  GridView catListView(BuildContext context) {
    List data = getList(context);
    return GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 10.0, // Spacing between rows
          crossAxisSpacing: 10.0, // Spacing between columns
          childAspectRatio: 1.0, // Aspect ratio of each item
        ),
        shrinkWrap: true, // Prevent GridView from taking infinite height
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling inside GridView
        itemBuilder: (context, index) {
          return data[index]; // Build each item in the grid
        },
    );
  }

  List<Widget> getList(BuildContext context) {
    List data = pickList();
    return List.generate(data.length, (index) {
      return InkWell(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                "lib/assets/${data[index][0]}.jpg",
                fit: BoxFit.cover, // Ensure the image fills the box
              ),
            ),
            Text(data[index][1]),
            Text(data[index][2]),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(context, RoutesName.item, arguments: [dataId, index]);
        },
      );
    });
  }

  List pickList() {
    switch (dataId) {
      case 0:
        return sports;
      case 1:
        return devices;
      case 2:
        return books;
      default:
        return ["error", "error", "error"];
    }
  }
}
