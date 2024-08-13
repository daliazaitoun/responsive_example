// lib/widgets/custom_drawer.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive1/pages/about.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10,),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/user.jpg'),
                    radius: 30.0,
                  ),
                ],
              ),
            ),
          ),
          
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About'),
            onTap: () {
              
              Navigator.push(context, MaterialPageRoute(builder:(ctx)=> AboutPage() ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Projects'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/projects');
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contact');
            },
          ),
            SizedBox(
            height: 300.sp,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('All Rights Reserved for @MTM , 2023'),
                SizedBox(
                  height: 10,
                ),
                Text('Version 1.0.0'),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
