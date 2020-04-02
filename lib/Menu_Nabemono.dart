import 'package:app_hci/Rebusan_satu.dart';
import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class Menu_Nabemono extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<Menu_Nabemono> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Nabemono'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/nabemono.jpg',
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
              "Masakan nabe (鍋料理 Naberyōri, masakan panci) atau hanya disebut Nabe, adalah jenis masakan Jepang yang dimasak dan dihidangkan di dalam panci besar. bahasa Jepang, nabe berarti panci. Panci diletakkan di atas kompor kecil atau plat pemanas yang ada di atas meja."
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Text(
              'Contoh Nabemono',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            MenuCard(
                img: ("assets/sukiyaki.jpg"),
                text: ("Sukiyaki"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new Rebusan_satu(),
                      ));
                }),
            MenuCard(
                img: ("assets/nabemono.jpg"),
                text: ("Rebusan 2"),
                onPressed: () {
                }),
            MenuCard(
                img: ("assets/nabemono.jpg"),
                text: ("Rebusan 3"),
                onPressed: () {
                }),
          ],

        ));
  }
}
