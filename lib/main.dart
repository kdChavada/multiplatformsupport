import 'dart:io';

import 'package:desktop/UI/Homepage.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  if (Platform.isWindows) {
    DesktopWindow.setMinWindowSize(Size(1200, 400));
    DesktopWindow.setWindowSize(Size(1000, 500));
    DesktopWindow.setMaxWindowSize(Size(1200, 800));
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Dektop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
