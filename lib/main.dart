import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
