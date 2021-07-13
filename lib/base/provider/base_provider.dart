import 'package:flutter/material.dart';import 'package:posts_app/widgets/state_layout.dart';

class BaseProvider<T> extends ChangeNotifier {
  T _instance;

  T get instance => _instance;

  StateType _stateType = StateType.loading;

  StateType get stateType => _stateType;

  void setStateTypeNotify(StateType stateType) {
    this._stateType = stateType;
  }

  void setStateType(StateType stateType) {
    _stateType = stateType;
    notifyListeners();
  }

  void setData(T mData) {
    _instance = mData;
    notifyListeners();
  }

  void refresh() {
    notifyListeners();
  }
}
