import 'package:flutter/services.dart';

import '../../app/index.dart';

AppBar buildAppBarWidget({
  Widget? leading,
  Widget? title,
  // Color? leadingIconColor,
  double? height,
  Color? appbarColor,
  List<Widget>? action,
  VoidCallback? onBack,
  Widget? bottom,
  SystemUiOverlayStyle? systemUiOverlayStyle,
}) {
  return AppBar(
    systemOverlayStyle: systemUiOverlayStyle,
    elevation: 0,
    toolbarHeight: height,
    backgroundColor: appbarColor,
    centerTitle: true,
    leading: leading ??
        IconButton(
          onPressed: onBack ??
              () {
                Get.back();
              },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorManager.primary,
          ),
        ),
    title: title ??
        Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages.logo,
              height: (52),
              width: (52),
            ),
            Utils.popinMedText(
              'Egon Wallet',
              fontSize: (24),
            ),
          ],
        ),
    actions: action ?? const [],
  );
}
