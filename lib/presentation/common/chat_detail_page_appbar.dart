import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/views/video_call/video_cal_view.dart';

class ChatDetailPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ChatDetailPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(AppImages.profile),
                maxRadius: 20,
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Jane Russel",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Online",
                      style: TextStyle(color: Colors.green, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Icon(
                FontAwesomeIcons.phone,
                color: Colors.grey.shade700,
                size: 20.sp,
              ),
              20.spaceX,
              InkWell(
                onTap: () {
                  Get.to(const VideoCall());
                },
                child: Icon(
                  FontAwesomeIcons.video,
                  color: Colors.grey.shade700,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
