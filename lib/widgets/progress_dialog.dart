import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/res/colors.dart';

import 'CircularLoadingWidget.dart';
import 'CircularProgress.dart';

class ProgressDialog extends Dialog {
  const ProgressDialog({Key key, this.hintText} ) : super(key: key);

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: ShapeDecoration(
            color: MColors.white,
            shadows: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
          child: Align(
            child: CircularLoadingWidget(height: 150),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
