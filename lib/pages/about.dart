// lib/pages/about.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.sp),
            Container(
              height: 50.sp,
              color: Color.fromARGB(255, 127, 228, 223),
              child: Center(
                child: Text(
                  "I am a Flutter Developer. Welcome to my portfolio!",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                ),
              ),
            ),
            Text(
              '''Graduated from Faculty of business \nManagement information system Department 2023''',
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
