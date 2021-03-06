import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/widgets/global_widgets/custom_round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// The base layout consists of the animal, the back button, and the container.
// https://www.figma.com/file/HpSvKhrVv4qbnp35oz7sjM/Alemeno-Assignment?node-id=1%3A41
class BaseLayout extends StatelessWidget {
  const BaseLayout({Key? key, required this.curvedContainer}) : super(key: key);

  final Widget curvedContainer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: CustomColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CustomRoundButton(
                  onPressed: () => Get.back(),
                  childWidget: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/animal_small.png",
                    height: MediaQuery.of(context).size.width * 0.5),
              ),
              Expanded(
                child: curvedContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
