import 'dart:async';
import 'package:FlutterMobilenet/widgets/startScreen.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<CameraDescription> cameras = [];
late CameraDescription firstCamera;
Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  firstCamera = cameras.first;

  runApp(
    GetMaterialApp(theme: ThemeData.light(), home: 
    Login(
    
      )),
  );
}
