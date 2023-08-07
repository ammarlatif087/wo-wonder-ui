import 'package:wo_wonder/app/index.dart';

import '../../models/chat_message.dart';
import '../views/chat_detail_page.dart';

class ChatBubble extends StatefulWidget {
  final ChatMessage chatMessage;
  const ChatBubble({super.key, required this.chatMessage});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorManager.black.withOpacity(.3),
                blurRadius: 2,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: widget.chatMessage.type == MessageType.sender
                  ? Radius.circular(20.r)
                  : Radius.circular(0.r),
              topRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
              bottomRight: widget.chatMessage.type == MessageType.receiver
                  ? Radius.circular(20.r)
                  : Radius.circular(0.r),
            ),
            color: (widget.chatMessage.type == MessageType.receiver
                ? Colors.white
                : ColorManager.primary),
          ),
          padding: const EdgeInsets.all(16),
          child: Utils.popinMedText(
            widget.chatMessage.message,
            color: widget.chatMessage.type == MessageType.sender
                ? ColorManager.white
                : ColorManager.black,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
