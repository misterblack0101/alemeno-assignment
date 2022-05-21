import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/widgets/global_widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class ClickPictureScreen extends StatelessWidget {
  const ClickPictureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: CustomColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            children: [
              const CustomBackButton(),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/animal.png")),
            ],
          ),
        ),
      ),
    );
  }
}
