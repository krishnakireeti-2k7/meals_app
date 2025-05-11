import 'package:flutter/material.dart';

class MealIteamTrait extends StatelessWidget {
  MealIteamTrait({super.key, required this.icon, required this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Icon(icon,size: 17,color: Colors.white,),
        SizedBox(width: 6,),
        Text(lable,style: const TextStyle(
          color: Colors.white,
        ),),
      ],
    );
  }
}
