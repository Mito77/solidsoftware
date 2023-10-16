
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solidsoftware/bases/base_state.dart';
import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';
import 'package:solidsoftware/widgets/change_Background_Color.dart';


class homePageWidget extends BaseStatefulWidget {
  homePageWidget();

  @override
  _homePageViewState createState() => _homePageViewState();
}

class _homePageViewState extends BaseState<homePageWidget>
    with TickerProviderStateMixin {
  var h, w, myText = "Hello there", boldStyle, _backgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();

    boldStyle = BoldStyle(fontSize: 24.sp, color: blackTextColor);
  }

  @override
  PreferredSizeWidget? appBar() => null;

  @override
  Widget getBody(BuildContext context) {
    h = 667.h;
    w = 375.w;
    return WillPopScope(
        child: screenDesign,
        onWillPop: () async {
          return false;
        });
  }

  Widget get screenDesign => GestureDetector(
      onTap: () async {
        Color newColor = await changeBackgroundColor(_backgroundColor);
        setState(() {
          _backgroundColor = newColor;
        });
      },
      child:
          Container(color: _backgroundColor, height: h, child: myTextWidget));

  Widget get myTextWidget => Center(
        child: CustomText(text: myText, customTextStyle: boldStyle),
      );
}
