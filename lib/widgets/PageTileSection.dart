import 'package:flutter/material.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/res/dimens.dart';
 import 'package:posts_app/ui/widgets/ButtonBack.dart';

class HeaderSection extends StatelessWidget {
  final String title, iconRight;
  final Color borderColor,iconColor;
  final Function rightIconOnClick;
  final bool displayRightIcon, displayIconBack;

  HeaderSection(
      {@required this.title,
      this.borderColor,
      this.displayIconBack = true,
      this.iconRight,
      this.rightIconOnClick,
      this.displayRightIcon = false,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (displayIconBack == false)
            SizedBox(
              width: 35,
              height: 35,
            ),
          if (displayIconBack == true)
            Container(child: ButtonBack(
              onClick: () {
                Navigator.of(context).pop();
              },
            )),
          Text(
            title,
            style: TextStyle(
                fontSize: Dimens.page_title,
                color: MColors.font_color,
                fontWeight: FontWeight.w600),
          ),
          if (displayRightIcon == false)
            SizedBox(
              width: 35,
              height: 35,
            ),
          if (displayRightIcon == true)
            ButtonBack(
              borderColor: borderColor,
              onClick: rightIconOnClick,
              btnIcon: iconRight,
              iconColor: iconColor,
            )
        ],
      ),
    );
  }
}
