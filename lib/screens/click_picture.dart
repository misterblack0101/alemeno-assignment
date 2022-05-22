import 'package:alemeno_assignment/widgets/global_widgets/base_layout.dart';
import 'package:alemeno_assignment/widgets/global_widgets/curved_container.dart';
import 'package:flutter/material.dart';

class ClickPictureScreen extends StatelessWidget {
  const ClickPictureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      curvedContainer: CurvedContainer(
        displayText: "Click your meal",
        iconButton: IconButton(
          icon: const Icon(Icons.camera),
          onPressed: () {},
        ),
        mainWidget: Container(),
      ),
    );
  }
}
