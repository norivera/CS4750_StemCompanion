import 'package:flutter/material.dart';
import 'package:steam_companion/calc_page.dart';
import 'package:steam_companion/precal_page.dart';
import 'package:steam_companion/trig_page.dart';
import './algebra_page.dart';
import './geometry_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Stem Companion';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Image.asset("asset/stem.jpg"),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset("asset/stem.jpg"),
            ),
            ListTile(
              title: const Text('Algebra'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AlgebraPage(title: 'Algebra Page!')));
              },
            ),
            ListTile(
              title: const Text('Geometry'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const GeometryPage(title: 'Geometry Page!')));
              },
            ),
            ListTile(
              title: const Text('Trigonometry'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrigPage(title: 'Trigonometry Page!')));
              },
            ),
            ListTile(
              title: const Text('Precalculus page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PrecalculusPage(title: 'Precalculus Page!')));
              },
            ),
            ListTile(
              title: const Text('Calculus Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CalculusPage(title: 'Calculus Page!')));
              },
            )
          ],
        ),
      ),
    );
  }
}