import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class Resep_satu extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<Resep_satu> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Resep Sukiyaki'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/sukiyaki.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Text(
                "Cara Membuat",
            ),
            Text(
              "1. Buang rasa sayang ke doi mu",
            ),Text(
              "2. Menangis tersedu",
            ),

          ],

        ));
  }
}
