import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class Rebusan_satu extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<Rebusan_satu> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Sukiyaki'),
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
                "Sukiyaki adalah hidangan daging dan sayuran yang direbus dalam panci besi.  Dinikmati dengan kuah yang dikenal dengan nama warishita, terbuat dari kecap dan gula. Ada banyak variasi dalam bahan dan cara makan hidangan tergantung daerahnya. Beberapa daerah menambahkan telur kocok ke dalam kuahnya untuk membuat rasa lebih ringan."
            ),

          ],

        ));
  }
}
