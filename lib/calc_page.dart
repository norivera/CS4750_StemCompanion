import 'package:flutter/material.dart';
import 'package:steam_companion/intergration_page.dart';
import 'package:steam_companion/limits_derivatives_page.dart';
import 'package:steam_companion/rules_of_derivatives_page.dart';


class CalculusPage extends StatefulWidget {
  const CalculusPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CalculusPageState createState() => _CalculusPageState();
}

class _CalculusPageState extends State<CalculusPage> {

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
                child: const Center(child: Text('Limits & Derivatives')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LimitsDerivatives(title: 'Subject: Limits & Derivatives')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Rules for Derivatives')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RulesForDerivatives(title: 'Subject: Rules for Derivatives')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Basic Integration')),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RulesForIntegration(title: 'Subject: Integration')));
              },
            ),
          ],
        )
    );
  }
}