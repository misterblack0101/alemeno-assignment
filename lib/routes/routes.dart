import 'package:alemeno_assignment/screens/click_picture.dart';
import 'package:alemeno_assignment/screens/home_screen.dart';
import 'package:alemeno_assignment/screens/message_screen.dart';
import 'package:alemeno_assignment/screens/share_picture.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getRoutes() {
  List<GetPage> routes = [
    GetPage(
      name: Routes.initialRoute,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.clickPicture,
      page: () => const ClickPictureScreen(),
    ),
    GetPage(
      name: Routes.sharePicture,
      page: () => SharePictureScreen(),
    ),
    GetPage(
      name: Routes.messageScreen,
      page: () => const MessageScreen(),
    ),
  ];
  return routes;
}

class Routes {
  static const String initialRoute = "/";
  static const String clickPicture = "/clickPicture";
  static const String sharePicture = "/sharePicture";
  static const String messageScreen = "/message";
}
