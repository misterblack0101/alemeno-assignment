import 'package:alemeno_assignment/global_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CustomColors.backgroundColor,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.17),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Share Your Meal",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: CustomColors.primaryColor,
                shape: const StadiumBorder(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                elevation: 3.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
