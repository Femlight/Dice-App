import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text('Dice App'),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1Number = 1;
  int dice2Number = 2;
  int dice3Number = 3;
  int dice4Number = 4;

  void diceNumber() {
    setState(() {
      dice1Number = Random().nextInt(6) + 1;
      dice2Number = Random().nextInt(6) + 1;
      dice3Number = Random().nextInt(6) + 1;
      dice4Number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    diceNumber();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/dice$dice1Number.png'),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  diceNumber();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/dice$dice2Number.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(children: [
          Expanded(
              child: GestureDetector(
                onTap: () {
                  diceNumber();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/dice$dice3Number.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  diceNumber();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/dice$dice4Number.png'),
                  ),
                ),
              ),
            ),
 
        ],)
      ],
    );
  }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.white,
//               backgroundImage: AssetImage("images/vic.jpeg"),
//             ),
//             Text(
//               'Idume Victor',
//               style: TextStyle(
//                 fontSize: 40,
//                 color: Colors.teal.shade100,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               'Flutter Developer',
//               style: TextStyle(
//                 fontSize: 40,
//                 color: Colors.teal.shade100,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               width: 250,
//               child: Divider(
//                 color: Colors.white,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Card(
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.phone,
//                     color: Colors.blue,
//                   ),
//                   title: Text(
//                     '+2348108149493',
//                     style: TextStyle(fontSize: 20),
//                     selectionColor: Colors.blue,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Card(
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.email,
//                     color: Colors.blue,
//                   ),
//                   title: Text(
//                     'Idumevick@gmail.com',
//                     style: TextStyle(fontSize: 20),
//                     selectionColor: Colors.blue,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
}
