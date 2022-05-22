import 'dart:developer';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

Future<String> uploadFile(String localImagePath) async {
  try {
    final uploadFile = File(localImagePath);
    final String fileName = uploadFile.path.split('/').last;
    final uploadPath = "files/$fileName";
    // Creating an reference to fire base storage upload location
    final ref = FirebaseStorage.instance.ref().child(uploadPath);

    // uploading file
    UploadTask uploadTask = ref.putFile(uploadFile);
    await uploadTask.whenComplete(() {});
    return "Thank you for sharing food with me";
  } catch (e) {
    log(e.toString());
    return e.toString();
  }
}
