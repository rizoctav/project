import 'package:flutter/material.dart';

class MasakanCard extends StatelessWidget {
  final String text;

  MasakanCard({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        text,
      ),
    );
  }
}
