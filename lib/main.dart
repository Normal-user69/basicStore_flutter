import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sport_store/core/routes/pages.dart';
import 'package:sport_store/core/routes/routes_name.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) =>const MyApp(),
    enabled: true, 
  ));
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      initialRoute: RoutesName.splash,
      onGenerateRoute: AppRoute.generate,
    );
  }

}