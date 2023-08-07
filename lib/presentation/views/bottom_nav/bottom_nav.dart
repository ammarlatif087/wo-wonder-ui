import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wo_wonder/app/index.dart';
import 'package:wo_wonder/presentation/common/app_bar_widget.dart';
import 'package:wo_wonder/presentation/view_models/bottom_nav_view_model.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BottomNavViewModel>(context);
    return Scaffold(
      appBar: viewModel.selectedTab == 0
          ? buildAppBarWidget(
              appbarColor: ColorManager.white,
              leading: Icon(
                Icons.menu,
                color: ColorManager.primary,
              ),
              title: Utils.popinMedText(
                'Feeds',
                fontSize: 20.sp,
                color: ColorManager.primary,
              ),
              action: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.paperPlane,
                      color: ColorManager.primary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      color: ColorManager.primary,
                    ),
                  ),
                ])
          : buildAppBarWidget(
              appbarColor: ColorManager.white,
              leading: Icon(
                Icons.menu,
                color: ColorManager.primary,
              ),
              title: Utils.popinMedText(
                viewModel.selectedTab == 1
                    ? 'Messages'
                    : viewModel.selectedTab == 3
                        ? 'Profile'
                        : 'Friends',
                fontSize: 20.sp,
                color: ColorManager.primary,
              ),
              action: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      color: ColorManager.primary,
                    ),
                  ),
                ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.selectedTab,
        onTap: (index) => viewModel.changeTab(index),
        selectedItemColor: ColorManager.primary,
        unselectedItemColor: ColorManager.darkGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Feeds"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person_3), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: viewModel.pages[viewModel.selectedTab],
    );
  }
}
