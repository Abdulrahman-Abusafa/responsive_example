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
      body: Responsive(
        mobile: Container(
          color: Colors.red,
          child: Column(
            children: [
              Text('1'),
              Text('2'),
            ],
          ),
        ),
        desktop: Container(
          color: Colors.blue,
          child: Row(
            children: [
              Text('1'),
              Text('2'),
            ],
          ),
        ),
      ),
    );
  }
}
