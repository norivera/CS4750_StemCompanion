import 'package:flutter/material.dart';
import 'package:steam_companion/circles_page.dart';
import 'package:steam_companion/pythagorean_info.dart';
import 'package:steam_companion/square_page.dart';
import 'package:steam_companion/triangle_info.dart';


class GeometryPage extends StatefulWidget {
  const GeometryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _GeometryPageState createState() => _GeometryPageState();
}

class _GeometryPageState extends State<GeometryPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[700],
                child: const Center(child: Text('Triangles')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrianglePage(title: 'Subject: Basics on Triangles')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Special Right Triangles and Pythagorean'))
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RightTrianglePage(title: 'Subject: Special Right Triangles & Pythagorean Theorem')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Circles')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CirclePage(title: 'Subject: Circles')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Squares')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SquarePage(title: 'Subject: Squares')));
              },
            ),
          ],
        )
    );
  }
}