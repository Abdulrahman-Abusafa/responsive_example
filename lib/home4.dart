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
                child: Column(
                  children: [
                    Responsive(
                        mobile: ImageIN(height: 200, fontSize: 18),
                        mobileLarge: ImageIN(height: 250, fontSize: 20),
                        tablet: ImageIN(height: 300, fontSize: 25),
                        desktop: ImageIN(height: 400, fontSize: 30)),
                  ],
                ),
                color: Colors.teal,
              ))
        ],
      ),
    );
  }
}

class ImageIN extends StatelessWidget {
  final double fontSize;
  final double height;
  const ImageIN({
    Key? key,
    required this.height,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/image.jpg',
          width: double.infinity,
          height: height,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                ' this is a big mountain That you can not climb',
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              ),
              if (Responsive.isDesktop(context))
                Column(
                  children: [
                    SizedBox(height: 150),
                    Align(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.amber[600]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('enter now'),
                          )),
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }
}
