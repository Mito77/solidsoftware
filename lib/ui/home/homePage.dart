

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solidsoftware/bases/base_state.dart';

class homePageWidget extends BaseStatefulWidget {
  homePageWidget();

  @override
  _homePageViewState createState() => _homePageViewState();
}

class _homePageViewState extends BaseState<homePageWidget>
    with TickerProviderStateMixin {

  var h, w;



  @override
  void initState() {
    super.initState();

  }

  @override
  PreferredSizeWidget? appBar() => null;

  @override
  Widget getBody(BuildContext context) {
    h = 667.h;
    w = 375.w;
    return WillPopScope(
        child:Container(),
        onWillPop: () async {
          return false;
        });
  }





}
