import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/widgets/global_widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

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
              const CustomBackButton(),
              Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/animal.png"),
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
