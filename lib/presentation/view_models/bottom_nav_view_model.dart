import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/views/chat_page.dart';
import 'package:wo_wonder/presentation/views/feeds_view/feeds_view.dart';
import 'package:wo_wonder/presentation/views/friends_view/friends_view.dart';
import 'package:wo_wonder/presentation/views/user_profile_view/user_profile_view.dart';

class BottomNavViewModel extends ChangeNotifier {
  int _selectedTab = 0;
  int get selectedTab => _selectedTab;

  final List pages = [
    const FeedsView(),
    const ChatPage(),
    // const MessageView(),
    const FriendsView(),
    const UserProfileView(),
  ];
  changeTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }
}
