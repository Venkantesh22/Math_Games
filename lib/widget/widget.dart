import 'package:flutter/material.dart';
import 'package:maths_games/constant/text_style.dart';

class OperatorNameHomeScreen extends StatelessWidget {
  OperatorNameHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        // Homepage Head name "Math's Games"
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: FittedBox(
          child: Text.rich(
              TextSpan(text: 'M', style: blueColSty, children: <InlineSpan>[
            TextSpan(
              text: 'a',
              style: greenColSty,
            ),
            TextSpan(text: 't', style: yellowColSty),
            TextSpan(text: 'h', style: pulpleColSty),
            // TextSpan(text: '\'s', style: blueColSty),
            TextSpan(text: ' '),
            TextSpan(text: 'G', style: redColSty),
            TextSpan(text: 'a', style: orangeColSty),
            TextSpan(text: 'm', style: greenColSty),
            TextSpan(text: 'e', style: pulpleColSty),
            TextSpan(text: 's', style: pinkColSty
                //
                ),
          ])),
        ));
  }
}

// Head Name "Addition"
Widget AddScreenHeadName() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'A', style: blueColSty, children: <InlineSpan>[
          TextSpan(
            text: 'd',
            style: greenColSty,
          ),
          TextSpan(text: 'd', style: yellowColSty),
          TextSpan(text: 'i', style: pulpleColSty),
          TextSpan(text: 't', style: blueColSty),
          TextSpan(text: 'i', style: redColSty),
          TextSpan(text: 'o', style: orangeColSty),
          TextSpan(text: 'n', style: pinkColSty),
        ])),
      ));
}

// Head Name "Subtraction"
Widget SubtractionScreenHeadName() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'S', style: blueColSty, children: <InlineSpan>[
          TextSpan(
            text: 'u',
            style: greenColSty,
          ),
          TextSpan(text: 'b', style: yellowColSty),
          TextSpan(text: 't', style: pulpleColSty),
          TextSpan(text: 'r', style: blueColSty),
          TextSpan(text: 'a', style: orangeColSty),
          TextSpan(text: 'c', style: greenColSty),
          TextSpan(text: 't', style: pulpleColSty),
          TextSpan(text: 'i', style: pinkColSty),
          TextSpan(text: 'o', style: yellowColSty),
          TextSpan(text: 'n', style: orangeColSty),
        ])),
      ));
}

// Head Name "Multiplication"
Widget multiplicationScreenHeadName() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'M', style: blueColSty, children: <InlineSpan>[
          TextSpan(
            text: 'u',
            style: greenColSty,
          ),
          TextSpan(text: 'l', style: yellowColSty),
          TextSpan(text: 't', style: pulpleColSty),
          TextSpan(text: 'i', style: blueColSty),
          TextSpan(text: 'p', style: orangeColSty),
          TextSpan(text: 'l', style: greenColSty),
          TextSpan(text: 'i', style: pulpleColSty),
          TextSpan(text: 'c', style: pinkColSty),
          TextSpan(text: 'a', style: yellowColSty),
          TextSpan(text: 't', style: greenColSty),
          TextSpan(text: 'i', style: pulpleColSty),
          TextSpan(text: 'o', style: orangeColSty),
          TextSpan(text: 'n', style: blueColSty),
        ])),
      ));
}

// Head Name "Division"
Widget divisionScreenHeadName() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'D', style: blueColSty, children: <InlineSpan>[
          TextSpan(
            text: 'i',
            style: greenColSty,
          ),
          TextSpan(text: 'v', style: yellowColSty),
          TextSpan(text: 'i', style: pulpleColSty),
          TextSpan(text: 's', style: blueColSty),
          TextSpan(text: 'i', style: orangeColSty),
          TextSpan(text: 'o', style: greenColSty),
          TextSpan(text: 'n', style: pulpleColSty),
        ])),
      ));
}

// ResulteButton Style
Widget resultButton() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'R', style: blueColSty, children: <InlineSpan>[
          TextSpan(
            text: 'e',
            style: greenColSty,
          ),
          TextSpan(text: 's', style: yellowColSty),
          TextSpan(text: 'u', style: pulpleColSty),
          TextSpan(text: 'l', style: blueColSty),
          TextSpan(text: 't', style: redColSty),
        ])),
      ));
}

Widget NextButton() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'N', style: blueColSty, children: <InlineSpan>[
          TextSpan(text: 'e', style: yellowColSty),
          TextSpan(text: 'x', style: pinkColSty),
          TextSpan(text: 't', style: redColSty),
        ])),
      ));
}

// Level Screen Heading
Widget LevelHead() {
  return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FittedBox(
        child: Text.rich(
            TextSpan(text: 'L', style: blueColSty, children: <InlineSpan>[
          TextSpan(text: 'E', style: yellowColSty),
          TextSpan(text: 'V', style: pinkColSty),
          TextSpan(text: 'E', style: pulpleColSty),
          TextSpan(text: 'L', style: redColSty),
        ])),
      ));
}
