import 'package:story_view/story_view.dart';
import 'package:wo_wonder/app/index.dart';

class StoryViewWidget extends StatelessWidget {
  const StoryViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storyController = StoryController();

    final List<StoryItem> storyItems = [
      StoryItem.pageImage(
        url:
            "https://media.istockphoto.com/photos/colorful-sunset-at-davis-lake-picture-id1184692500?k=20&m=1184692500&s=612x612&w=0&h=7noTRS8UjiAVKU92eIhPG17PIWVh-kCmH5jKX5GOcdQ=",
        controller: storyController,

        imageFit: BoxFit.cover, // Fill the entire screen with the image
      ),
      StoryItem.pageImage(
        url:
            "https://media.istockphoto.com/photos/colorful-sunset-at-davis-lake-picture-id1184692500?k=20&m=1184692500&s=612x612&w=0&h=7noTRS8UjiAVKU92eIhPG17PIWVh-kCmH5jKX5GOcdQ=",
        controller: storyController,
        // Add the user name here
        imageFit: BoxFit.cover, // Fill the entire screen with the image
      ),
      // Add more StoryItems here
    ];

    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: storyItems,
            controller: storyController,
            repeat: false,
            onComplete: () {
              Get.back();
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 70.h, left: 30.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage: const AssetImage(
                      AppImages.profile), // Add user image URL here
                ),
                SizedBox(width: 8.w),
                Text(
                  'User Name', // Add the user name here
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyleManager.popinsMed(
                          color: ColorManager.white,
                        ),
                        suffixIcon: Icon(
                          Icons.send,
                          color: ColorManager.white,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        hintText: 'Reply...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.white,
                          ),
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.white,
                          ),
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
