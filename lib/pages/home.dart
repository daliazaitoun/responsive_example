import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive1/pages/about.dart';
import 'package:responsive1/pages/contact.dart';
import 'package:responsive1/pages/projects.dart';
import 'package:responsive1/widgets/custom_drawer.dart';
import 'package:responsive1/widgets/custom_navbar.dart';
import 'package:responsive1/widgets/webview.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    AboutPage(),
    ProjectsPage(),
    ContactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        actions: [
          // TextButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => WebViewPage(url: Linkedurl)));
          //   },
          //   child: Text('Linkedin Profile'),
          //   ),
          TextButton(
            onPressed: () {
              openLink(GitHuburl);
            },
            child: Text(
              'GitHub Profile',
              selectionColor: Colors.black,
            ),
          )
        ],
      ),
      drawer: const CustomDrawer(),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: MediaQuery.sizeOf(context).width < 600
          ? CustomNavBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            )
          : SizedBox(),
    );
  }

  final String Linkedurl =
      'https://www.linkedin.com/in/dalia-zaitoun-8a9558219?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app';
  final String GitHuburl = 'https://github.com/daliazaitoun';

  void openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      // You can handle the error if the URL cannot be opened
      throw 'Could not launch $url';
    }
  }
}
