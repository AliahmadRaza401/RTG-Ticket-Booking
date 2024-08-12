import 'package:rtg/screens/all_tickets.dart';
import 'package:rtg/screens/attraction.dart';
import 'package:rtg/screens/bottom_nav_bar.dart';
import 'package:rtg/screens/bottom_nav_controller.dart';
import 'package:rtg/screens/explore.dart';

import 'package:rtg/screens/maps.dart';
import 'package:rtg/screens/profile.dart';
import 'package:rtg/screens/qr_code.dart';

import '../widgets/widgets_imports.dart';

class HomePage extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final List<Widget> _screens = [
    HomeScreen(),
    Maps(),
    QrCode(),
    Explore(),
    const Profile(),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: context.height,
          width: context.width,
          child: Obx(() => _screens[navigationController.selectedIndex.value])),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
