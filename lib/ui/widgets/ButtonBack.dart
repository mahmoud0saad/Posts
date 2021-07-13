import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/res/colors.dart';

class ButtonBack extends StatelessWidget {

 final Function onClick;
 final String btnIcon;
 final Color borderColor , iconColor,backgroundColor;
 ButtonBack({this.onClick,this.btnIcon,this.borderColor,this.iconColor,this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onClick==null)
          Navigator.pop(context);
        onClick.call();
      },
      child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * .025),
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.width * .1,
          decoration: BoxDecoration(
            border: Border.all( color: borderColor == null ? MColors.transparent_white_color : borderColor, width: 1 ),
            borderRadius: BorderRadius.all(Radius.circular(8),), color: backgroundColor),
          child: Center(
            child: btnIcon == null ? Icon( Localizations.localeOf(context).toString() == "ar"
                ? Icons.arrow_forward
                :Icons.arrow_back,
              color:  MColors.font_color ,size:MediaQuery.of(context).size.width * .05 ,):Image.asset(btnIcon,color: iconColor,)
             ,
          )),
    );
  }
}
