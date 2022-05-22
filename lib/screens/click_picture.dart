import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/routes/routes.dart';
import 'package:alemeno_assignment/widgets/global_widgets/base_layout.dart';
import 'package:alemeno_assignment/widgets/global_widgets/curved_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickPictureScreen extends StatelessWidget {
  const ClickPictureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseLayout(
      curvedContainer: CurvedContainer(
        displayText: "Click your meal",
        iconButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
            primary: CustomColors.primaryColor,
            elevation: 3.0,
          ),
          child: const Icon(
            Icons.camera_alt,
            size: 30,
          ),
          onPressed: () {
            Get.toNamed(Routes.sharePicture);
          },
        ),
        mainWidget: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/fork.png"),
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.primaryColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: size.width * 0.2,
              ),
            ),
            Image.asset("assets/images/spoon.png"),
          ],
        ),
      ),
    );
  }
}
