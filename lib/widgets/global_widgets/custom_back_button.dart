import 'package:alemeno_assignment/global_constants.dart';
import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton(
      {Key? key, required this.childWidget, required this.onPressed})
      : super(key: key);

  final Widget childWidget;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: childWidget,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: CustomColors.primaryColor,
        elevation: 3.0,
      ),
    );
  }
}
