import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsfeed_multiple_imageview/newsfeed_multiple_imageview.dart';
import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/views/story_view/story_view.dart';

class FeedsView extends StatelessWidget {
  const FeedsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      "https://media.istockphoto.com/photos/colorful-sunset-at-davis-lake-picture-id1184692500?k=20&m=1184692500&s=612x612&w=0&h=7noTRS8UjiAVKU92eIhPG17PIWVh-kCmH5jKX5GOcdQ=",
      "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "https://media.istockphoto.com/photos/colorful-sunset-at-davis-lake-picture-id1184692500?k=20&m=1184692500&s=612x612&w=0&h=7noTRS8UjiAVKU92eIhPG17PIWVh-kCmH5jKX5GOcdQ=",
      "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
    ];
    return Column(
      children: [
        10.spaceY,
        SizedBox(
          height: 80.h,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return index != 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const StoryViewWidget());
                            },
                            child: CircleAvatar(
                              backgroundColor: ColorManager.primary,
                              radius: 27.r,
                              child: CircleAvatar(
                                radius: 25.r,
                                backgroundImage: const AssetImage(
                                  AppImages.profile,
                                ),
                              ),
                            ),
                          ),
                          Utils.popinSemBoldText('name'),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                const AssetImage(AppImages.profile),
                            radius: 27.r,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                radius: 10.r,
                                child: Icon(
                                  Icons.add,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                          ),
                          Utils.popinSemBoldText('')
                        ],
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 10.spaceX;
              },
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 250.h,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.black.withOpacity(.2),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                width: 1.sw,
                child: Padding(
                  padding: EdgeInsets.all(18.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(AppImages.profile),
                        ),
                        title: Utils.popinSemBoldText('Name'),
                        subtitle: Utils.popinSemBoldText(
                          '2 min ago',
                          color: ColorManager.darkGrey,
                        ),
                        trailing: const Icon(Icons.more_horiz),
                      ),
                      // 10.spaceY,
                      Utils.popinMedText(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface ',
                        maxLine: 2,
                      ),
                      20.spaceY,
                      NewsfeedMultipleImageView(
                        imageUrls: imageUrls,
                      ),
                      15.spaceY,
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              //  _showModalBottomSheet(context);
                            },
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.comment,
                                  size: 20.sp,
                                ),
                                10.spaceX,
                                Utils.popinMedText('Comments'),
                              ],
                            ),
                          ),
                          20.spaceX,
                          FaIcon(
                            FontAwesomeIcons.thumbsUp,
                            size: 20.sp,
                          ),
                          10.spaceX,
                          Utils.popinMedText('Likes'),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return 10.spaceY;
            },
          ),
        )
      ],
    );
  }
}
