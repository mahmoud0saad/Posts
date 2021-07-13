 import 'package:flutter/material.dart';
import 'package:posts_app/res/colors.dart';

class SubmitButtonWithoutBorder extends StatelessWidget {
  const SubmitButtonWithoutBorder({
    Key key,
    @required this.label,
    @required this.onPressed,
    this.padding = const EdgeInsets.fromLTRB(32, 16, 32, 16),
    this.margin = EdgeInsets.zero,
    this.labelStyle = const TextStyle(fontSize: 16, color: Colors.white),
    this.color,
    this.alignment = Alignment.center,
    this.isExpanded = false,
  }) : super(key: key);

  final Function onPressed;
  final String label;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final TextStyle labelStyle;
  final Color color;
  final Alignment alignment;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: alignment,
      child: GestureDetector(
        child: Container(
          padding: padding,
          alignment: isExpanded ? Alignment.center : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
            gradient: color == null
                ? LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      MColors.secondary_light_color,
                      MColors.secondary_dark_color
                    ],
                  )
                : null,
          ),
          child: Text(
            label,
            style: labelStyle,
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
