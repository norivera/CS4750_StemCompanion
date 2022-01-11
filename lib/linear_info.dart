import 'package:flutter/material.dart';


class LinearPage extends StatefulWidget {
  const LinearPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LinearPageState createState() => _LinearPageState();
}

class _LinearPageState extends State<LinearPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
/*    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  const MyThirdPage(title: 'Page No. 3')),
    );*/

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'App Logo - Screen No. 2',
            ),
            const Text(
              'My Demo App 2 - Screen No. 2',
            ),
            const Text(
              'Login First Please',
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}