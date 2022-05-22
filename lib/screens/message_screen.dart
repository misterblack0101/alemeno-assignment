import 'package:alemeno_assignment/global_constants.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CustomColors.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Image.asset("assets/images/animal.png"),
        ],
      ),
    );
  }
}
