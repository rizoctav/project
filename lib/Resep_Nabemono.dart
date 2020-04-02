import 'package:app_hci/Rebusan_satu.dart';
import 'package:app_hci/Resep_satu.dart';
import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class Resep_Nabemono extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<Resep_Nabemono> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Resep Nabemono'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            MenuCard(
                img: ("assets/sukiyaki.jpg"),
                text: ("Sukiyaki"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new Resep_satu(),
                      ));
                }),
          ],

        ));
  }
}
