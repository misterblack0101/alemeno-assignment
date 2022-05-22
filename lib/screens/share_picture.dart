import 'dart:io';
import 'package:alemeno_assignment/routes/routes.dart';
import 'package:alemeno_assignment/services/upload_file.dart';
import 'package:alemeno_assignment/widgets/global_widgets/base_layout.dart';
import 'package:alemeno_assignment/widgets/global_widgets/curved_container.dart';
import 'package:alemeno_assignment/widgets/global_widgets/custom_round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharePictureScreen extends StatefulWidget {
  const SharePictureScreen({Key? key}) : super(key: key);

  @override
  State<SharePictureScreen> createState() => _SharePictureScreenState();
}

class _SharePictureScreenState extends State<SharePictureScreen> {
  final String imagePath = Get.arguments["imagePath"];

  bool isUploading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseLayout(
      curvedContainer: CurvedContainer(
        displayText: "Will you eat this?",
        iconButton: CustomRoundButton(
          isLoading: isUploading,
          childWidget: const Icon(
            Icons.check_sharp,
            size: 30,
          ),
          onPressed: () async {
            setState(() {
              isUploading = true;
            });
            final String message = await uploadFile(imagePath);
            Get.snackbar(
              "Simba Says:",
              message,
            );
            setState(() {
              isUploading = false;
            });
            Get.offNamed(Routes.messageScreen);
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
