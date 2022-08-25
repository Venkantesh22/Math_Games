import 'package:flutter/material.dart';
import 'package:maths_games/constant/text_style.dart';

class ScoreBord extends StatelessWidget {
  int totelNumOfProblem = 0;
  final rightAnsCount;
  final wongAnsCount;
  ScoreBord({Key? key, required this.rightAnsCount, required this.wongAnsCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Scoreboard of Right answer
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 0, 96, 3), width: 4),
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 27, 244, 34),
          ),
          child: Center(
            child: Text(
              rightAnsCount.toString(),
              textAlign: TextAlign.center,
              style: ScoreBoardTextsty,
            ),
          ),
          width: 50,
          height: 60,
        ),
        // Scoreboard of worng answer
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 110, 1, 38), width: 4),
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 252, 16, 94),
          ),
          child: Center(
            child: Text(
              wongAnsCount.toString(),
              style: ScoreBoardTextsty,
            ),
          ),
          width: 50,
          height: 60,
        ),
      ],
    );
  }

  void TotelNumofProblemMed() {
    totelNumOfProblem = rightAnsCount + wongAnsCount;
  }
}

Widget TotelNumofProblem({required int sumOfRightWrongCount}) {
  return Container(
    padding: EdgeInsets.all(2),
    // width: 100,
    height: 60,
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 0, 79, 144), width: 4),
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(sumOfRightWrongCount.toString(), style: ScoreBoardTextsty),
        Text('/10', style: ScoreBoardTextsty)
      ],
    ),
  );
}
