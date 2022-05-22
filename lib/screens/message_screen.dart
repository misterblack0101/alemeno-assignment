import 'package:alemeno_assignment/global_constants.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: CustomColors.backgroundColor,
      child: Center(
        child: Text(
          "GOOD JOB",
          style: TextStyle(
            fontFamily: "LilitaOne",
            fontSize: 48,
            color: CustomColors.primaryColor,
            fontWeight: FontWeight.w400,
            letterSpacing: 3,
            wordSpacing: 6,
          ),
        ),
      ),
    );
  }
}
