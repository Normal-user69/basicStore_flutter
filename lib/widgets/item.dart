import 'package:flutter/material.dart';
import 'package:sport_store/widgets/cat_items.dart';

class Item extends StatelessWidget {
  final args;
  const Item({super.key,required this.args});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: itemPhoto(context),
      body: centerText(context),
    );
  }
  PreferredSize itemPhoto(BuildContext context){
    List data = CatItems(dataId:args[0]).pickList();
    return PreferredSize
    (
      preferredSize: Size(double.infinity, MediaQuery.sizeOf(context).height),
     child: Container(
        margin: const EdgeInsets.only(top: 30),
       child: Image.asset(
                  "lib/assets/${data[args[1]][0]}.jpg",
                  fit: BoxFit
                      .cover, // This will ensure the image fills the box while maintaining the aspect ratio.
                ),
     ),
        );
  }
  
  Center centerText(BuildContext context) {
    List data = CatItems(dataId: args[0]).pickList();
    return Center(
      child: Column(
        children: [
          Text(data[args[1]][1],style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
          Text(data[args[1]][2],style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
          InkWell(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
              ),
              child: 
            const Center(
              child: Text("buy",style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
            ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),

    );
  }
}