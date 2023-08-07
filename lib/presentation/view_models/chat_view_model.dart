import '../../app/index.dart';

class ChatViewModel extends ChangeNotifier {
  TextEditingController textController = TextEditingController();
  List<String> messages = [];

  void handleSubmitted() {
    String text = textController.text;
    textController.clear();

    // Prefix user message with "You:"
    String userMessage = 'You: $text';

    messages.insert(0, userMessage);

    // Simulating dummy response
    Future.delayed(const Duration(seconds: 1), () {
      String reply = 'This is a dummy reply.';
      messages.insert(0, reply);
      notifyListeners();
    });
  }
}
