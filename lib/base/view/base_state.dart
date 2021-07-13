import 'package:flutter/material.dart';
import 'package:posts_app/CommonUtils/utils.dart';
import 'package:posts_app/route/fluro_navigator.dart';
import 'package:posts_app/widgets/progress_dialog.dart';

import 'package:toast/toast.dart';

import '../presenter/base_presenter.dart';
import 'i_base_view.dart';

///将Presenter的生命周期和Widget的生命周期绑定
abstract class BaseState<T extends StatefulWidget, P extends BasePresenter>
    extends State<T> implements IBaseView {
  P mPresenter;

  BaseState() {
    mPresenter = createPresenter();
    mPresenter.view = this;
  }

  P createPresenter();

  @override
  BuildContext getContext() {
    return context;
  }

  @override
  void showProgress({bool isDismiss = true}) {
    if (mounted && !_isShowDialog) {
      _isShowDialog = true;
      try {
        showTransparentDialog(
            context: context,
            barrierDismissible: true,
            builder: (_) {
              return WillPopScope(
                onWillPop: () async {
                  _isShowDialog = false;
                  return Future.value(true);
                },
                child: GestureDetector(
                  onTap: () {
                    if (isDismiss) closeProgress();
                  },
                  child: ProgressDialog(),
                ),
              );
            });
      } catch (e) {
        print(e);
      }
    }
  }

  void showDialogMessage({String title,Message}) {
    if (mounted && !_isShowDialog) {
      _isShowDialog = true;
      try {
        showTransparentDialog(
            context: context,
            barrierDismissible: true,
            builder: (_) {
              return WillPopScope(
                onWillPop: () async {
                  _isShowDialog = false;
                  return Future.value(true);
                },
                child: GestureDetector(
                  onTap: () {

                  },
                  child: ProgressDialog(),
                ),
              );
            });
      } catch (e) {
        print(e);
      }
    }
  }

  bool _isShowDialog = false;

  @override
  void closeProgress() {
    if (mounted && _isShowDialog) {
      _isShowDialog = false;
      NavigatorUtils.goBack(context);
    }
  }

  @override
  void showToasts(String msg) {
    Toast.show(msg, context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
  }

  @override
  void initState() {
    super.initState();
    mPresenter.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mPresenter.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    mPresenter?.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
    mPresenter.deactivate();
  }

  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    didUpdateWidgets<T>(oldWidget);
  }

  void didUpdateWidgets<W>(W oldWidget) {
    mPresenter?.didUpdateWidget<W>(oldWidget);
  }
}
