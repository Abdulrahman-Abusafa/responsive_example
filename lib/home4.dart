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
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu))),
            ),
      drawer: Container(
        width: 300,
        color: Colors.amber,
      ),
      // body: Responsive.isMobile(context) ? Text('mobile') : Text("Desktop"));
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
                child: Container(
              color: Colors.amber,
            )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.teal,
              ))
        ],
      ),
    );
  }
}
