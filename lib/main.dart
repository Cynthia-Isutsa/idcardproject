import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard()
  ));
}

class IdCard extends StatelessWidget {
  const IdCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Id Card Projecct',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
          )
          ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ), 
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
               Text(
              "Cynthia Isutsa",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              ),
          ]
        ),
      ),
    );
  }
}