import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/controller/home_controller.dart';
import 'package:six_cash/controller/profile_screen_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
class ShowName extends StatelessWidget {
  const ShowName({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetBuilder<ProfileController>(builder: (controller)=>controller.userInfo != null
            ? Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text('${'Hi'.tr} ${controller.userInfo.fName} ${controller.userInfo.lName}', textAlign: TextAlign.start, maxLines: 1, overflow: TextOverflow.ellipsis, style: rubikLight.copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT, color: Colors.white.withOpacity(0.5)),
        ),
            ) :Text('hi_user'.tr,style: rubikLight.copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT, color: Colors.white.withOpacity(0.5)))),
        GetBuilder<HomeController>(builder: (controller){
          return Text('${controller.greetingMessage()}', style: rubikRegular.copyWith(fontSize: Dimensions.FONT_SIZE_OVER_LARGE, color: Colors.white,),
          );
        }),
      ],
    );
  }
}