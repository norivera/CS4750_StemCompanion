import 'package:flutter/material.dart';


class CubicPage extends StatefulWidget {
  const CubicPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CubicPageState createState() => _CubicPageState();
}

class _CubicPageState extends State<CubicPage> {
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
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            ListTile(
                title: Image.asset('asset/Cubic-Graph-Example.png',
                    height: 300,
                    width: 100,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen();
                  }));
                }
            ),
            ListTile(
                title: Image.asset('asset/factoring-cubes.png',
                    height: 300,
                    width: 100,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen2();
                  }));
                }
            ),
            const ListTile(
              title: SizedBox(
                height: 50,
                child: Center(child: Text('Click on each image to enlarge them. Tap on the image to exit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                ),
              ),
            ),
          ],
        )
    );
  }
}

class DetailScreen extends StatelessWidget
{
  const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              'asset/Cubic-Graph-Example.png',
            ),
          ),
        ),
      ),
    );
  }
}
class DetailScreen2 extends StatelessWidget
{
  const DetailScreen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              'asset/factoring-cubes.png',
            ),
          ),
        ),
      ),
    );
  }
}
