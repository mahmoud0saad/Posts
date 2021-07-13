import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/CommonUtils/size_config.dart';

typedef SelectedCallback = Function(dynamic selected);

class DropDownList extends StatefulWidget {
  BuildContext context;
  List<dynamic> items;
  String tag;
  String selected;
  SelectedCallback onSelect;

  @override
  _DropDownSpinner createState() => _DropDownSpinner(
      items: items, tag: tag, selected: selected, onSelect: onSelect,);

  DropDownList({
    this.context,
    this.items,
    this.tag,
    this.selected,
    this.onSelect,
  });
}

class _DropDownSpinner extends State<DropDownList> {
  BuildContext context;
  List<dynamic> items;
  String tag;
  String selected;
  SelectedCallback onSelect;

  _DropDownSpinner({
    this.context,
    this.items,
    this.tag,
    this.selected,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () => {_showBottom(context, selected, items, tag)},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  selected,
                   textScaleFactor:SizeConfig.textScaleFactor,
                  style: TextStyle(color: MColors.primary_color),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: MColors.primary_color,
                ),
              )
            ],
          ),
        ));
  }

  void _showBottom(
      BuildContext context, String title, List<dynamic> items, String tag) {
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
                              child: Text(items[index].name),
                              onTap: () => {
                                setState(() {
                                  Navigator.of(context).pop();
                                  selected = items[index].name;
                                  onSelect(items[index]);
                                })
                              },
                            ),
                          ),
                          index == items.length - 1
                              ? SizedBox()
                              : Divider(color: Colors.grey)
                        ],
                      ),
                    );
                  }),
            ]),
          );
        });
  }
}
