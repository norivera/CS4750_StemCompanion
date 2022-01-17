import 'package:flutter/material.dart';


class QuadraticPage extends StatefulWidget {
  const QuadraticPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _QuadraticPageState createState() => _QuadraticPageState();
}

class _QuadraticPageState extends State<QuadraticPage> {
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
                title: Image.asset('asset/quadratic-function.png',
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
                title: Image.asset('asset/quadratic_set.png',
                    height: 300,
                    width: 100,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen3();
                  }));
                }
            ),
            ListTile(
                title: Image.asset('asset/quadratic-formula.png',
                    height: 300,
                    width: 100,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen4();
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
              'asset/quadratic-function.png',
            ),
          ),
        ),
      ),
    );
  }
}
class DetailScreen3 extends StatelessWidget
{
  const DetailScreen3({Key? key}) : super(key: key);
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
              'asset/quadratic_set.png',
            ),
          ),
        ),
      ),
    );
  }
}
class DetailScreen4 extends StatelessWidget
{
  const DetailScreen4({Key? key}) : super(key: key);
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
              'asset/quadratic-formula.png',
            ),
          ),
        ),
      ),
    );
  }
}