import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
      Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, "/");
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTextStyle(
        style: TextStyle(fontSize: 35),
        child: Center(
          child: Text("Creative Store"),
        ),
      ),
    );
  }
}