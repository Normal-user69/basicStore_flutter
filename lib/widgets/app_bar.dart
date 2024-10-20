import 'package:flutter/material.dart';
import 'package:sport_store/core/constants/colors.dart';
import 'package:sport_store/core/constants/icons.dart';

PreferredSize appBar(){
  return PreferredSize(
    preferredSize: const Size(double.infinity, 150),
    child: Container(
      color: AppColor().bg,
      margin: const EdgeInsets.fromLTRB(20,30,10,0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextField(
            decoration: InputDecoration(
              prefixIcon: AppIcons().search,
              hintText: "search...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )
            ),
          )),
          Container(
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: AppIcons().list),
        ],
      ),
    ),
  );
}