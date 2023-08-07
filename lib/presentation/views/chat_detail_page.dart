import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wo_wonder/app/index.dart';

import '../../models/chat_message.dart';
import '../../models/send_menu_items.dart';
import '../common/chat_bubble.dart';
import '../common/chat_detail_page_appbar.dart';

enum MessageType {
  sender,
  receiver,
}

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message: "Hi John", type: MessageType.receiver),
    ChatMessage(message: "Hope you are doin good", type: MessageType.receiver),
    ChatMessage(
        message: "Hello Jane, I'm good what about you",
        type: MessageType.sender),
    ChatMessage(
        message: "I'm fine, Working from home", type: MessageType.receiver),
    ChatMessage(message: "Oh! Nice. Same here man", type: MessageType.sender),
  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(
        text: "Camera", icons: Icons.photo_camera_back, color: Colors.amber),
    SendMenuItems(
        text: "Gallery",
        icons: FontAwesomeIcons.imagePortrait,
        color: Colors.blue),
    SendMenuItems(
        text: "File", icons: Icons.file_copy, color: Colors.deepOrange),
    SendMenuItems(
        text: "Location", icons: Icons.location_on, color: Colors.green),
    SendMenuItems(text: "Audio", icons: Icons.music_note, color: Colors.purple),
    SendMenuItems(
        text: "Contact", icons: Icons.person, color: Colors.deepPurple),
  ];

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            color: const Color(0xff737373),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: menuItems[index].color.shade50,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              menuItems[index].icons,
                              size: 20,
                              color: menuItems[index].color.shade400,
                            ),
                          ),
                          5.spaceY,
                          Text(menuItems[index].text),
                        ]),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatDetailPageAppBar(),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatBubble(
                chatMessage: chatMessage[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 16, bottom: 10),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: const CircleAvatar(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type message...",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none),
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
