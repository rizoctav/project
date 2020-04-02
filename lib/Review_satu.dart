import 'package:flutter/material.dart';
import 'Menu_Card.dart';

class Review_satu extends StatefulWidget {
  static String tag = 'MenuMasakan';
  Home createState() => new Home();
}
final searchController = TextEditingController();
class Home extends State<Review_satu> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Yoshinoya'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/yoshinoya.jpg',
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
              "Rating : 10/10",
            ),
            Text(
                "Belom Pernah Kesana tapi pengen kesana kalo ada yang mau bayarin",
            ),

          ],

        ));
  }
}
