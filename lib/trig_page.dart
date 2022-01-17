import 'package:flutter/material.dart';


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
                child: const Center(child: Text('The Basic Trig Functions')),
              ),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Trig Identities')),
              ),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear')));
              },
            ),
            ListTile(
              title: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Pythagorean Identities')),
              ),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearPage(title: 'Subject: Linear')));
              },
            ),
          ],
        )
    );
  }
}