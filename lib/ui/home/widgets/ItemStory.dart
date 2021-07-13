
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/CommonUtils/size_config.dart';
import 'package:posts_app/models/post_item.dart';
import 'package:posts_app/res/colors.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key key, this.toDoItem}) : super(key: key);

  final PostItem toDoItem;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.screenWidth * .02,
          horizontal: SizeConfig.screenWidth * .02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: MColors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Visibility(
            visible: toDoItem?.photo!=null&&(toDoItem?.photo?.isNotEmpty??false),
            child: buildImageOfAd(
              toDoItem.photo ?? "",
            ),
          ),
          PostDetailWidget(toDoItem:toDoItem)
        ],
      ),
    );;
  }

  Container buildImageOfAd(String imageUrl) {
    return Container(
      height: SizeConfig.screenHeight * .2,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: CachedNetworkImage(
          fit: BoxFit.fitWidth,
          useOldImageOnUrlChange: true,
          memCacheHeight: 600,
          memCacheWidth: 600,
          imageUrl: imageUrl,
          placeholder: (context, url) => _createPlaceHolder(context),
        ),
      ),
    );
  }

  Widget _createPlaceHolder(BuildContext context) {
    return Container(
      color: MColors.primary_color,
      constraints: BoxConstraints.expand(),
      child: FittedBox(
        child: Icon(
          Icons.image,
          color: Colors.white,
        ),
      ),
    );
  }
}


class PostDetailWidget extends StatelessWidget {
  PostDetailWidget({Key key, this.toDoItem}) : super(key: key);

  final PostItem toDoItem;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: Text(toDoItem?.title ?? ""),
      subtitle: Text(toDoItem?.body ?? ""),
      trailing: Text(toDoItem?.date ?? ""),
    );
  }
}