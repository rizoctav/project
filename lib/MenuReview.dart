import 'package:app_hci/Review_satu.dart';
import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class MenuReview extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<MenuReview> {
  @override

  Widget build(BuildContext context) {

    final searchFood = TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        border: UnderlineInputBorder(),
        filled: true,

        hintText: 'Cari Masakan',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
      controller: searchController,
    );

    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Review dan Rekomendasi'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            MenuCard(
                img: ("assets/yoshinoya.jpg"),
                text: ("Yoshinoya"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new Review_satu(),
                      ));
                }),
          ],

        ));
  }
}
