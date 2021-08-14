import 'package:flutter/material.dart';
import 'package:responsive_app/responsive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("responsive")),
      // body: Responsive.isMobile(context) ? Text('mobile') : Text("Desktop"));
      body: Column(
        children: [
          if (Responsive.isMobile(context)) Text('mobile'),
          if (Responsive.isMobileLarge(context)) Text('isMobileLarge'),
          if (Responsive.isTablet(context)) Text('isTablet'),
          if (Responsive.isDesktop(context)) Text('Desktop'),
        ],
      ),
    );
  }
}
