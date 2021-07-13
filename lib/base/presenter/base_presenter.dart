import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/CommonUtils/preference/Prefs.dart';
import 'package:posts_app/CommonUtils/utils.dart';
import 'package:posts_app/network/exception/error_status.dart';
import 'package:posts_app/network/network_util.dart';
import 'package:posts_app/route/fluro_navigator.dart';

import '../view/i_base_view.dart';
import 'i_presenter.dart';

class BasePresenter<V extends IBaseView> extends IPresenter {
  V view;

  //Cancel network request
  CancelToken _cancelToken;

  BasePresenter() {
    _cancelToken = CancelToken();
  }

  @override
  void deactivate() {}

  @override
  void didChangeDependencies() {}

  @override
  void didUpdateWidget<W>(W oldWidget) {}

  @override
  void dispose() {
    if (_cancelToken.isCancelled) {
      _cancelToken.cancel();
    }
  }

  @override
  void initState() {}

  Future requestFutureData<T>(Method method,
      {String url,
      bool isShow: true,
      bool isClose: true,
      Function(T t) onSuccess,
      Function(List<T> list) onSuccessList,
      Function(int code, String msg) onError,
      dynamic params,
      Map<String, dynamic> queryParams,
      CancelToken cancelToken,
      Options options,
      bool isList: false}) async {
    await DioUtils.instance.requestDataFuture<T>(method, url,
        params: params,
        queryParameters: queryParams,
        options: options,
        cancelToken: cancelToken ?? _cancelToken, onSuccess: (data) {
      //view.closeProgress();
      if (onSuccess != null) {
        onSuccess(data);
      }
    }, onSuccessList: (data) {
      if (isClose) //view.closeProgress();
      if (onSuccessList != null) onSuccessList(data);
    }, onError: (code, msg) {

      if (isClose) //view.closeProgress();
        _onError(code, msg, onError);

    });
  }

  bool checkAuth(int code, context){
    if (code == ErrorStatus.FORBIDDEN) {
      // Prefs.clearExpectLanguage();
      // NavigatorUtils.push(context, LoginRouter.loginPage,
      //     replace: false, clearStack: true);
      return true;
    }
    return false;
  }




  void requestDataFromNetwork<T>(Method method,
      {String url,
      bool isShow: true,
      bool isClose: true,
      Function(T t) onSuccess,
      Function(List<T> list) onSuccessList,
      Function(int code, String msg) onError,
      dynamic params,
      Map<String, dynamic> queryParameters,
      CancelToken cancelToken,
      Options options,
      bool isList: false}) {
//    Display loading circle
    DioUtils.instance.requestData<T>(method, url,
        params: params,
        queryParameters: queryParameters,
        cancelToken: cancelToken ?? _cancelToken,
        options: options,
        isList: isList, onSuccess: (data) {
//      Request data successfully
      //view.closeProgress();
      if (onSuccess != null) {
        onSuccess(data);
      }

      //Request list successful
    }, onSuccessList: (data) {
      if (isClose) //view.closeProgress();
      if (onSuccessList != null) {
        onSuccessList(data);
      }

      ///Request error
    }, onError: (code, msg) {

      if (isClose) //view.closeProgress();
        _onError(code, msg, onError);
    });
  }



  _onError(int code, String msg, Function(int code, String msg) onError) {
    //view.closeProgress();
    if (code != ErrorStatus.CANCEL_ERROR) {
//      view.showToast(msg);
    }

    if (onError != null && view.getContext() != null) {
      onError(code, msg);
    }
  }
}
