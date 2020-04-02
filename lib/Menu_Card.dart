import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String img;
  final String text;
  Function onPressed;

  MenuCard({@required this.img, @required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("$img"),
              ),
              title: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15.0,
                    color: Colors.black,
                  )
              )
          )
      ),
    );
  }
}
