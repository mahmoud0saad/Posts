
import 'package:flutter/material.dart';

abstract class IBaseView {

  BuildContext getContext();

  void showProgress();

  void closeProgress();

  void showToasts(String msg);
}
