import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  final String Linkedurl =
      'https://www.linkedin.com/in/dalia-zaitoun-8a9558219?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          Text(
            'daliazaitoun2002@gmail.com',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () async {
              final Uri uri = Uri.parse(Linkedurl);
              if (!await launchUrl(uri)) {
                // You can handle the error if the URL cannot be opened
                throw 'Could not launch $Linkedurl';
              }
            },
            child: Text('Linkedin Profile'),
          ),
        ],
      ),
    );
  }
}
