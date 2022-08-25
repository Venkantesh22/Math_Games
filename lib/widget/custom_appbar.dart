import 'package:flutter/material.dart';
import 'package:maths_games/constant/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      actions: [Icon(Icons.back_hand)],
      // actions: [
      //   Container(
      //     decoration: BoxDecoration(
      //         color: Colors.blue, borderRadius: BorderRadius.circular(50)),
      //     child: IconButton(
      //       onPressed: () {
      //         // setState((){

      //         // })
      //       },
      //       icon: const Icon(Icons.add_a_photo),
      //       color: Colors.white,
      //     ),
      //   )
      // ],
      title: Text(
        title,
        style: TextStyle(fontSize: 30),
      ),
      backgroundColor: appBarColor,
      elevation: 0,
    );
  }
}
