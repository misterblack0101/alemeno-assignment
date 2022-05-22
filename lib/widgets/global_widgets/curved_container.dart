import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({
    Key? key,
    required this.displayText,
    required this.iconButton,
    required this.mainWidget,
  }) : super(key: key);
  final String displayText;
  final Widget iconButton;

  // This is the widget that takes the most space.
  // This is either the capture widget, or the image widget.
  final Widget mainWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          mainWidget,
          Text(
            displayText,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFF3C3C3C),
              fontSize: 24,
            ),
          ),
          iconButton,
        ],
      ),
    );
  }
}
