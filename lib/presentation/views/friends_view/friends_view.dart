import 'package:wo_wonder/app/index.dart';

import '../../common/textfield_widget.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const TextfieldWidget(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
            ),
            20.spaceY,
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: .9,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.profileViewRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: ColorManager.white,
                          boxShadow: [
                            BoxShadow(
                              color: ColorManager.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(AppImages.profile))),
                              height: 120.h,
                              width: 1.sw,
                              // child: Image.asset(
                              //   AppImages.profile,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            10.spaceY,
                            Utils.popinSemBoldText(
                              'Andrew john',
                            ),
                            Utils.popinSemBoldText(
                              'United States',
                              fontSize: 12.sp,
                              color: ColorManager.darkGrey,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
