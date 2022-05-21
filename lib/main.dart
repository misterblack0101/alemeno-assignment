import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Alemeno',
      theme: ThemeData(
        fontFamily: "Andika",
        primaryColor: CustomColors.primaryColor,
      ),
      initialRoute: Routes.initialRoute,
      getPages: getRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
