import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard()
  ));
}

class IdCard extends StatefulWidget {
  const IdCard ({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
 int levelState = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            levelState += 1;
          })
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
        ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Image.asset('assets/image101.jpg'),
            const Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image101.jpg'),
                radius: 40.0,
              ),
            ),
           Divider(
            height: 90.0,
            color: Colors.grey[800],

           ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              const SizedBox(height: 10.0),
               const Text(
              "Cynthia Isutsa",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              ),
                const SizedBox(height: 30.0),
                const Text(
              "CURRENT LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              const SizedBox(height: 10.0),
                Text(
              '$levelState',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              ), 
              const SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    'cynthiaisutsa@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              )

              
          ]
        ),
      ),
    );
  
  }
}

