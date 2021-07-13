import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/CommonUtils/image_utils.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/CommonUtils/size_config.dart';

typedef SelectedCallback = Function(dynamic selected);

class DropDownListCustom extends StatefulWidget {

  final BuildContext context;
  final List<dynamic> items;
  final String tag;
  String hint;
  final String imageName ;
  final SelectedCallback onSelect;

  @override
  _DropDownSpinner createState() => _DropDownSpinner();

  DropDownListCustom({
    this.context,
    this.items,
    this.tag,
    this.hint,
    this.onSelect,
    this.imageName
  });
}

class _DropDownSpinner extends State<DropDownListCustom> {

  @override
  Widget build(BuildContext context) {
    double MHeight = MediaQuery.of(context).size.height;
    double MWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        _showBottom(widget.context, widget.items, widget.tag);
      },
      child: Container(
        height: MHeight * 0.06,
        width: MWidth * 0.9,
        padding: EdgeInsets.symmetric(horizontal: MWidth * 0.04),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: const Color(0x1d1f314a), width: 1)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10 ),
                  child: Image.asset(
                      ImageUtils.getImagePath(widget.imageName))),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                    widget.hint,
                    style:
                    TextStyle(color: MColors.font_color,fontSize: 15,fontWeight: FontWeight.w400),
                ),
                  ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: MColors.primary_color,
                size: MWidth * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showBottom(BuildContext context, List<dynamic> items, String tag) {
    showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    tag,
                     textScaleFactor:SizeConfig.textScaleFactor,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: Icon(Icons.close),
                    onTap: () => {Navigator.of(context).pop()},
                  )
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: GestureDetector(
                              child: Text(items[index]),
                              onTap: () {
                                setState(() {
                                  widget.hint = items[index];
                                  widget.onSelect(items[index]);
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          index == items.length - 1
                              ? SizedBox()
                              : Divider(color: MColors.gray)
                        ],
                      ),
                    );
                  }),
            ]),
          );
        });
  }
}
