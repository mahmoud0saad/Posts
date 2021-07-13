import 'package:flutter/material.dart';
import 'package:posts_app/res/colors.dart';

class CustomButton extends StatelessWidget {
  String hint;
  Color color=MColors.primary_color;
  CustomButton({
    Key key,
    this.hint,
    this.color=MColors.primary_color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
              color: const Color(0x4016d3da),
              offset: Offset(0, 3),
              blurRadius: 15,
              spreadRadius: 0)
        ],
        color: color,
      ),
      child: Center(
        child: Text(
          hint,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
               fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ),
    );
  }
}
