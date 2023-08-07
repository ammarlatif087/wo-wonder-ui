import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/index.dart';

class SocialLoginWidget extends StatelessWidget {
  final VoidCallback ontap;
  final IconData iconData;
  const SocialLoginWidget({
    super.key,
    required this.ontap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(
            color: ColorManager.borderColor,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Center(
            child: FaIcon(
              iconData,
            ),
          ),
        ),
      ),
    );
  }
}
