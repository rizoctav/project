import 'package:app_hci/MenuMasakan.dart';
import 'package:app_hci/MenuResep.dart';
import 'package:app_hci/MenuReview.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  static String tag = 'main-menu';
  @override
  _MainMenu createState() => new _MainMenu();
}

final myController = TextEditingController();
final myController1 = TextEditingController();

class _MainMenu extends State<MainMenu> {
  @override

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }


  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/header_drawer.jpg'),
      )),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "Masakan Jepang",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[10],
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Japanese Food Expert'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(
              icon: Icons.fastfood,
              text: "Masakan dan Infonya",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new MenuMasakan(),
                    ));
              },
            ),
            _createDrawerItem(
              icon: Icons.comment,
              text: "Review dan Rekomendasi",
              onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => new MenuReview(),
                  ));
              },
            ),
            _createDrawerItem(
              icon: Icons.receipt,
              text: "Resep Makanan",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new MenuResep(),
                    ));
              },
            ),
          ],
        ));
  }
}
