import '../../app/index.dart';

class SocialCountWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const SocialCountWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Utils.popinSemBoldText(
          title,
          color: ColorManager.darkGrey,
        ),
        Utils.popinSemBoldText(
          subTitle,
          fontSize: 20.sp,
        ),
      ],
    );
  }
}
