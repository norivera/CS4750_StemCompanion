import 'package:flutter/material.dart';
import 'package:steam_companion/basic_trig_functions_page.dart';
import 'package:steam_companion/law_of_page.dart';
import 'package:steam_companion/trig_identities_page.dart';


class TrigPage extends StatefulWidget {
  const TrigPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TrigPageState createState() => _TrigPageState();
}

class _TrigPageState extends State<TrigPage> {

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
                child: const Center(child: Text('Trig Fundamentals')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrigFunctions(title: 'Subject: Trig Fundamentals')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Trig Identities')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrigIdentities(title: 'Subject: Trigonometric Identities')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Law of Sine & Cosine')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrigLaw(title: 'Subject: Law of Sine & Cosine')));
              },
            ),
          ],
        )
    );
  }
}