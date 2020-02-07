import 'package:flutter/material.dart';
import './pages/recordpage.dart';
import 'dart:async';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GEOTag Vid",
      theme: ThemeData(primarySwatch: Colors.red),
      home: RecordPage(),
    );
  }
}