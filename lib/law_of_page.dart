import 'package:flutter/material.dart';


class TrigLaw extends StatefulWidget {
  const TrigLaw({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TrigLawState createState() => _TrigLawState();
}

class _TrigLawState extends State<TrigLaw> {

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
                title: Image.asset('asset/law-of.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailScreen();
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
              'asset/law-of.jpg',
            ),
          ),
        ),
      ),
    );
  }
}

