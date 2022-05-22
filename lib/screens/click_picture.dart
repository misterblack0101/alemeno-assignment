import 'dart:developer';
import 'package:alemeno_assignment/global_constants.dart';
import 'package:alemeno_assignment/routes/routes.dart';
import 'package:alemeno_assignment/widgets/global_widgets/base_layout.dart';
import 'package:alemeno_assignment/widgets/global_widgets/curved_container.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickPictureScreen extends StatefulWidget {
  const ClickPictureScreen({Key? key}) : super(key: key);

  @override
  State<ClickPictureScreen> createState() => _ClickPictureScreenState();
}

class _ClickPictureScreenState extends State<ClickPictureScreen> {
  CameraController? _cameraController;
  late String imagePath;

  @override
  void initState() {
    super.initState();
    availableCameras().then(
      // cameras: List of availableCameras:
      // index 0 = back camera and 1 = front camera.
      (cameras) {
        if (cameras.isNotEmpty) {
          _initCameraController(cameras[0]).then((void v) {});
        } else {
          log("No cameras available!");
        }
      },
    ).catchError((err) {
      log('Error: $err.code\nError Message: $err.message');
    });
  }

  // initializing the camera controller instance.
  Future _initCameraController(CameraDescription cameraDescription) async {
    await _cameraController?.dispose();

    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.medium);

    // 6
    try {
      await _cameraController?.initialize();
      _cameraController!.setFlashMode(FlashMode.off);
    } on CameraException catch (e) {
      log(e.toString());
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseLayout(
      curvedContainer: CurvedContainer(
        displayText: "Click your meal",
        // Camera Icon
        iconButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
            primary: CustomColors.primaryColor,
            elevation: 3.0,
          ),
          child: const Icon(
            Icons.camera_alt,
            size: 30,
          ),
          onPressed: () async {
            try {
              final _image = await _cameraController?.takePicture();
              Get.toNamed(Routes.sharePicture,
                  arguments: {"imagePath": _image?.path});
            } catch (e) {
              log(e.toString());
            }
          },
        ),
        // Camera preview row
        mainWidget: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/fork.png"),
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.primaryColor,
                  width: 2,
                ),
              ),
              child: (_cameraController == null ||
                      !_cameraController!.value.isInitialized)
                  ? const Center(
                      child: Text(
                        'Loading',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  : ClipOval(
                      child: CameraPreview(_cameraController!),
                    ),
            ),
            Image.asset("assets/images/spoon.png"),
          ],
        ),
      ),
    );
  }
}
