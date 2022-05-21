import 'package:alemeno_assignment/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () => Get.back(),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 3.0,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(5),
          primary: CustomColors.primaryColor,
        ),
      ),
    );
  }
}
