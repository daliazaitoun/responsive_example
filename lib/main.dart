import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive1/pages/home.dart';
import 'pages/about.dart';
import 'pages/projects.dart';
import 'pages/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     
      builder: (context, child) {
        return MaterialApp(
           debugShowCheckedModeBanner: false,
          scrollBehavior: MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          routes: {
            '/about': (context) => const AboutPage(),
            '/projects': (context) => const ProjectsPage(),
            '/contact': (context) => const ContactPage(),
          },
          title: 'Portfolio Website',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}

