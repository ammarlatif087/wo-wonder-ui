import 'package:flutter/services.dart';
import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/common/app_bar_widget.dart';

class PeopleNearbyView extends StatelessWidget {
  const PeopleNearbyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: buildAppBarWidget(
        leading: const SizedBox(),
        systemUiOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        appbarColor: ColorManager.white,
        title: Utils.popinMedText(
          'People Nearby',
          color: ColorManager.primary,
          fontSize: 20.sp,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.h,
                childAspectRatio: 1,
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
                            '130 km',
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
          10.spaceY,
        ],
      ),
    );
  }
}
