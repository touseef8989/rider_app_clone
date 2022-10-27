import 'package:flutter/material.dart';
import 'package:rider_app/utils/colors.dart';
import 'package:rider_app/utils/textstyles.dart';

class HomeCards extends StatelessWidget {
  String? text;
   HomeCards({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 2, 103, 204),
            offset: Offset(5,10)
          ),
        ]
      ),
      child: Card(
        borderOnForeground: true,
        elevation: 7,
        color: homecardscolor,
        shadowColor: Colors.white,
        child: Center(child: Text(text!,style: cardtext.boldStyle)
        ),
      ),
    );
  }
}