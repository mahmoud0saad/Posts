import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/CommonUtils/size_config.dart';
import 'package:posts_app/res/colors.dart';


class DropDownCustom extends StatefulWidget {
  List<String> list;
  Function(String) onSelect;
  String hint;
  bool isExpand=true;
  DropDownCustom(this.list,this.hint, this.onSelect,{this.isExpand=true});

  @override
  _DropDownCustomState createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  String selected;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: SizedBox(),
      isExpanded: widget.isExpand,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: MColors.primary_color,
      ),

      hint: Text(
        widget.hint,
         textScaleFactor:SizeConfig.textScaleFactor,
        style: TextStyle(color: MColors.coolGrey,
        ),

      ),
      value: selected,
      onChanged: (String Value) {
        setState(() {
          selected = Value;
          widget.onSelect(Value);
        });
      },
      items: widget?.list?.map((String user) {
        return DropdownMenuItem<String>(
          value: user,
          child: Text(user,
             textScaleFactor:SizeConfig.textScaleFactor,
            style: TextStyle(
              color: MColors.coolGrey,
            ),
          ),
        );
      })?.toList(),
    );
  }
}
