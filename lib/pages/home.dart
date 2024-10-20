import 'package:flutter/material.dart';
import 'package:sport_store/widgets/app_bar.dart';
import 'package:sport_store/widgets/bottom_bar.dart';
import 'package:sport_store/widgets/catigores.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: const MyBottomBar(),
      body: const Categories(),
    );
  }
}