import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/common/textfield_widget.dart';
import 'package:wo_wonder/presentation/views/chat_screen/chat_screen_view.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          const TextfieldWidget(
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search),
          ),
          20.spaceY,
          Expanded(
            child: ListView.separated(
              itemCount: 16,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Get.to(const ChatView());
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(AppImages.profile),
                  ),
                  title: Utils.popinSemBoldText('Name'),
                  subtitle: Utils.popinMedText(
                    'Message is.......',
                    fontSize: 12.sp,
                    color: ColorManager.darkGrey,
                  ),
                  trailing: Utils.popinMedText(
                    '30 min ago',
                    fontSize: 10.sp,
                    color: ColorManager.darkGrey,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 10.spaceY;
              },
            ),
          ),
        ],
      ),
    );
  }
}
