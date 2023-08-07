import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsfeed_multiple_imageview/newsfeed_multiple_imageview.dart';
import 'package:wo_wonder/presentation/common/social_count_widget.dart';

import '../../../app/index.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

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
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              child: CircleAvatar(
                                backgroundImage:
                                    const AssetImage(AppImages.profile),
                                radius: 37.r,
                              ),
                            ),
                            20.spaceX,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Utils.popinBoldText('Hussein Darda'),
                                Row(
                                  children: [
                                    Utils.popinBoldText(
                                      'photographer',
                                      color: ColorManager.darkGrey,
                                    ),
                                    Utils.popinBoldText('@place'),
                                  ],
                                ),
                                Utils.popinBoldText('To Be Nice'),
                              ],
                            )
                          ],
                        ),
                        20.spaceY,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SocialCountWidget(title: 'Posts', subTitle: '124'),
                            SocialCountWidget(
                                title: 'Followers', subTitle: '124'),
                            SocialCountWidget(
                                title: 'Friends', subTitle: '124'),
                          ],
                        ),
                        20.spaceY,
                        SizedBox(
                          width: 1.sw,
                          child: TabBar(
                            tabs: const [
                              Tab(
                                text: "Posts",
                              ),
                              Tab(text: "Collections"),
                            ],
                            labelColor: ColorManager.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: TabBarView(
                    children: [
                      ListView.separated(
                        itemCount: 3,
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
                                      backgroundImage:
                                          AssetImage(AppImages.profile),
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
                                          _showModalBottomSheet(context);
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
                          return 15.spaceY;
                        },
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: 12,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1.w,
                          mainAxisSpacing: 1.h,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridTile(
                              child: Image.asset(
                                AppImages.profile,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.spaceY,
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    AppImages.profile,
                  ),
                ),
                title: Utils.popinSemBoldText(
                  'Comments 2.4k from Name Post',
                  fontSize: 16.sp,
                ),
                subtitle: Utils.popinSemBoldText('Text'),
                trailing: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: FaIcon(
                    FontAwesomeIcons.x,
                    size: 22.sp,
                  ),
                ),
              ),
              Utils.popinSemBoldText(
                'Comments(22)',
                fontSize: 18.sp,
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(
                          AppImages.profile,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Utils.popinSemBoldText(
                            'Name',
                            fontSize: 16.sp,
                          ),
                          Utils.popinSemBoldText(
                            '1 min ago',
                            color: ColorManager.darkGrey,
                          ),
                          Utils.popinSemBoldText(
                            'In publishing and graphic design, Lorem ipsum is a placeholder text',
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.comment,
                                    size: 20.sp,
                                  ),
                                  10.spaceX,
                                  Utils.popinMedText('2k'),
                                ],
                              ),
                              20.spaceX,
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.comment,
                                    size: 20.sp,
                                  ),
                                  10.spaceX,
                                  Utils.popinMedText('2k'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 10.spaceY;
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
