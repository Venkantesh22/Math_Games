import 'dart:math';

import 'package:flutter/material.dart';

// Color for app
final _listITems = List.generate(200, (i) => "item $i");
final _random = Random();

Color background = Colors.white;
// Color appBarColor = Color.fromARGB(255, 14, 126, 18);
Color appBarColor = Colors.orange;

Color MulityColorbackground =
    Colors.primaries[_random.nextInt(Colors.primaries.length)];

/*
// Text style for rich Text with blue color
TextStyle blueColSty = const TextStyle(
    letterSpacing: 3,
    fontWeight: FontWeight.bold,
    fontSize: 40,
    fontFamily: 'Ultra',
    shadows: [
      Shadow(color: Color.fromARGB(255, 27, 79, 124), offset: Offset(5.5, 5.0))
    ],
    color: Colors.blueAccent);

TextStyle greenColSty = TextStyle(
  color: Color.fromARGB(255, 3, 251, 11),
  shadows: [
    Shadow(color: Color.fromARGB(255, 58, 113, 59), offset: Offset(5.5, 5.0))
  ],
);
TextStyle yellowColSty = const TextStyle(
  color: Colors.yellowAccent,
  shadows: [
    Shadow(color: Color.fromARGB(255, 97, 97, 22), offset: Offset(5.5, 5.0))
  ],
);
TextStyle pulpleColSty = const TextStyle(
  color: Colors.purpleAccent,
  shadows: [
    Shadow(color: Color.fromARGB(255, 97, 56, 104), offset: Offset(5.5, 5.0))
  ],
);
TextStyle redColSty = const TextStyle(
  color: Colors.redAccent,
  shadows: [
    Shadow(color: Color.fromARGB(255, 102, 52, 52), offset: Offset(5.5, 5.0))
  ],
);
TextStyle orangeColSty = const TextStyle(
  color: Colors.orangeAccent,
  shadows: [
    Shadow(color: Color.fromARGB(255, 100, 79, 52), offset: Offset(5.5, 5.0))
  ],
);
TextStyle pinkColSty = const TextStyle(
  color: Color.fromARGB(255, 255, 7, 90),
  shadows: [
    Shadow(color: Color.fromARGB(255, 130, 65, 87), offset: Offset(5.5, 5.0))
  ],
);


// TextStyle for Scoreboard
TextStyle ScoreBoardTextsty = TextStyle(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.bold,
  fontFamily: 'Lora',
);

*/

BorderSide boxBorder = BorderSide(color: Colors.black, width: 3);
