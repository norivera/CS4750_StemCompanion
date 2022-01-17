import 'package:flutter/material.dart';


class FactoringSquares extends StatefulWidget {
  const FactoringSquares({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FactoringSquaresState createState() => _FactoringSquaresState();
}

class _FactoringSquaresState extends State<FactoringSquares> {

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
                title: Image.asset('asset/differenceofsquares.png',
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
                title: Image.asset('asset/perfectdiffernceofperfectsquares.png',
                    height: 300,
                    width: 100,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen2();
                  }));
                }
            ),
            ListTile(
                title: Image.asset('asset/factoring.png',
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
                title: Image.asset('asset/perfect_tri.png',
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
              'asset/differenceofsquares.png',
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
              'asset/perfectdiffernceofperfectsquares.png',
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
              'asset/factoring.png',
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
              'asset/perfect_tri.png',
            ),
          ),
        ),
      ),
    );
  }
}