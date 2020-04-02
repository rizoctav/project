import 'package:app_hci/Menu_Nabemono.dart';
import 'package:app_hci/Resep_Nabemono.dart';
import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class MenuResep extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<MenuResep> {
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
          title: Text('Resep Masakan'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            /*searchFood,
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.teal.shade700,
              ),
            ),
            */
            Text(
              'Pilih Resep Jenis Makanan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),

            MenuCard(
                img: ("assets/nabemono.jpg"),
                text: ("Nabemono (Rebusan)"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new Resep_Nabemono(),
                      ));
                }),
          ],

        ));
  }
}
