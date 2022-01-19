import 'package:flutter/material.dart';


class RightTrianglePage extends StatefulWidget {
  const RightTrianglePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _RightTrianglePageState createState() => _RightTrianglePageState();
}

class _RightTrianglePageState extends State<RightTrianglePage> {

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
                title: Image.asset('asset/special-right-triangles.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen();
                  }));
                }
            ),
            ListTile(
                title: Image.asset('asset/socatoha.png',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen2();
                  }));
                }
            ),
            ListTile(
                title: Image.asset('asset/Pythagorean-Theorem-with-Examples.png',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen3();
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
              'asset/special-right-triangles.png',
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
              'asset/socatoha.png',
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
              'asset/Pythagorean-Theorem-with-Examples.png',
            ),
          ),
        ),
      ),
    );
  }
}