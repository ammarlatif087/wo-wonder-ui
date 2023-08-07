import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:wo_wonder/app/index.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        overlayOpacity: 0,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        direction: SpeedDialDirection.left,
        children: [
          SpeedDialChild(
            elevation: 0,
            child: const Icon(Icons.messenger),
            backgroundColor: ColorManager.blue.withOpacity(.3),
            onTap: () {},
          ),
          SpeedDialChild(
            elevation: 0,
            child: const Icon(Icons.video_call),
            backgroundColor: ColorManager.blue.withOpacity(.3),
            onTap: () {},
          ),
          SpeedDialChild(
            elevation: 0,
            child: const Icon(
              Icons.volume_down_outlined,
            ),
            backgroundColor: ColorManager.blue.withOpacity(.3),
            onTap: () {},
          ),
          SpeedDialChild(
            elevation: 0,
            child: const Icon(Icons.mic),
            backgroundColor: ColorManager.blue.withOpacity(.3),
            onTap: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400.h,
            width: 1.sw,
            decoration: BoxDecoration(
              color: ColorManager.buttonRed,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.profile),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 49.h, horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: ColorManager.white,
                    child: Icon(
                      Icons.arrow_back,
                      color: ColorManager.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        child: Icon(
                          Icons.ac_unit,
                        ),
                      ),
                      Utils.popinMedText(
                        'Name',
                        color: ColorManager.white,
                        fontSize: 16.sp,
                      ),
                      const SizedBox()
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 400.h,
            width: 1.sw,
            decoration: BoxDecoration(
              color: ColorManager.green,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.profile),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 49.h, horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Utils.popinMedText(
                        'Name',
                        color: ColorManager.white,
                        fontSize: 16.sp,
                      ),
                      Image.asset(
                        AppImages.profile,
                        height: 90.h,
                        width: 50.w,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
