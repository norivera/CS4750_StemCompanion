import 'package:flutter/material.dart';


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
                color: Colors.amber[600],
                child: const Center(child: Text('Linear')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Quadratic')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Cubic')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear')));
              },
            ),
          ],
        )
    );
  }
}