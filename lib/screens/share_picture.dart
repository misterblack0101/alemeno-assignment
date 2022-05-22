import 'dart:io';
import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/routes/routes.dart';
import 'package:alemeno_assignment/services/upload_file.dart';
import 'package:alemeno_assignment/widgets/global_widgets/base_layout.dart';
import 'package:alemeno_assignment/widgets/global_widgets/curved_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharePictureScreen extends StatelessWidget {
  SharePictureScreen({Key? key}) : super(key: key);

  final String imagePath = Get.arguments["imagePath"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseLayout(
      curvedContainer: CurvedContainer(
        displayText: "Will you eat this?",
        iconButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
            primary: CustomColors.primaryColor,
            elevation: 3.0,
          ),
          child: const Icon(
            Icons.check_sharp,
            size: 30,
          ),
          onPressed: () async {
            final String message = await uploadFile(imagePath);
            Get.snackbar(
              "Animal Says:",
              message,
            );
            Get.toNamed(Routes.messageScreen);
          },
        ),
        mainWidget: CircleAvatar(
          radius: size.width * 0.25,
          backgroundImage: FileImage(
            File(imagePath),
          ),
        ),
      ),
    );
  }
}
