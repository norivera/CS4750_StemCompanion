import 'package:flutter/material.dart';
import 'package:steam_companion/cubic_info.dart';
import 'package:steam_companion/factoring_quadratic.dart';
import 'package:steam_companion/quadratic_info.dart';
import './linear_info.dart';


class AlgebraPage extends StatefulWidget {
  const AlgebraPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AlgebraPageState createState() => _AlgebraPageState();
}

class _AlgebraPageState extends State<AlgebraPage> {

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
                color: Colors.amber[400],
                child: const Center(child: Text('Linear Functions')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear Functions')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[300],
                child: const Center(child: Text('Factoring Quadratic Functions')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FactoringSquares(title: 'Factoring Quadratic Functions')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[200],
                child: const Center(child: Text('Quadratic Functions')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const QuadraticPage(title: 'Subject: Quadratic Functions')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Cubic')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CubicPage(title: 'Subject: Cubic Functions')));
              },
            ),
          ],
        )
    );
  }
}