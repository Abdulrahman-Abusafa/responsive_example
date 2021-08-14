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
        mobile: ResponsiveGrisView(crossAxisCount: 1),
        mobileLarge: ResponsiveGrisView(crossAxisCount: 2),
        tablet: ResponsiveGrisView(crossAxisCount: 4),
        desktop: ResponsiveGrisView(crossAxisCount: 5),
      ),
    );
  }
}

class ResponsiveGrisView extends StatelessWidget {
  const ResponsiveGrisView({
    Key? key,
    required this.crossAxisCount,
  }) : super(key: key);

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            child: Text('label $index'),
            color: Colors.pink,
            margin: EdgeInsets.all(4));
      },
    );
  }
}
