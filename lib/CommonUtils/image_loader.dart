import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'image_utils.dart';

class ImageLoader {
  static CachedNetworkImage loadDefault(String url, {BoxFit fit: BoxFit.fitHeight,
    double height:double.infinity,double width:double.infinity}) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
     placeholder: (context, url) => Icon(Icons.person),
     errorWidget: (context, url, error) => Icon(Icons.person),
    );
  }

  static CachedNetworkImage loadQuran(String url, {BoxFit fit: BoxFit.fill,
    double height:double.infinity,double width:double.infinity}) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,

      placeholder: (context, url) => Image.asset(
        'assets/images/loading.gif',
        fit:BoxFit.scaleDown,
      ),
      errorWidget: (context, url, error) => Image.asset(
        ImageUtils.getImagePath("ic_logo"),
        fit:BoxFit.none,
      ),
    );
  }


  static CachedNetworkImage loadNoPlaceHolder(String url, {BoxFit fit: BoxFit.fill,
    double height:double.infinity,double width:double.infinity}) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
