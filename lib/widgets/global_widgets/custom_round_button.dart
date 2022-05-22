import 'package:alemeno_assignment/global_constants.dart';
import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton(
      {Key? key,
      required this.childWidget,
      required this.onPressed,
      this.isLoading = false})
      : super(key: key);

  final Widget childWidget;
  final Function()? onPressed;
  // We use the isloading value, to show the progess indicator.
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : childWidget,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: CustomColors.primaryColor,
        elevation: 3.0,
      ),
    );
  }
}
