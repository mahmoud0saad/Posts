import 'package:posts_app/CommonUtils/preference/Prefs.dart';
import 'package:posts_app/base/provider/base_provider.dart';
import 'package:posts_app/widgets/state_layout.dart';

class SplashProvider extends BaseProvider {
  Future<void> isUserLoggedIn(context) async {
    if (Prefs.getUserToken != null ||
        Prefs.getUserToken.toString().isNotEmpty) {
      setStateType(StateType.complete);
    } else
      setStateType(StateType.empty);
    notifyListeners();
  }
}
