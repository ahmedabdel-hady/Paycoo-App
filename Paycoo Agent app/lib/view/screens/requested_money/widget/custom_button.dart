import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/controller/theme_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';


class CustomButton extends StatelessWidget {
  final Function onTap;
  final String btnTxt;
  final Color backgroundColor;
  CustomButton({this.onTap, @required this.btnTxt, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(padding: EdgeInsets.all(0),
        backgroundColor: onTap == null ? Theme.of(context).textTheme.bodyText1.color.withOpacity(0.3) : backgroundColor == null ? Theme.of(context).primaryColor : backgroundColor,
      ),
      child: Container(
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorResources.getAcceptBtn(),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 7, offset: Offset(0, 1)), // changes position of shadow
            ],
            gradient: (Get.find<ThemeController>().darkTheme || onTap == null) ? null : LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor,
            ]),
            borderRadius: BorderRadius.circular(10)),
        child: Text(btnTxt,
            style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT, color: Colors.white
            )),
      ),
    );
  }
}
