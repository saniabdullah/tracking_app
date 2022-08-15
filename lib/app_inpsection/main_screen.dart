import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tracking_app/app_inpsection/screens/barcode/barcode_screen.dart';
import 'package:tracking_app/app_inpsection/screens/dasboard/dasboard_screen.dart';
import 'package:tracking_app/app_inpsection/screens/profile/profile_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    const BarcodeScreen(),
    const DasboardScreen(),
    const ProfileScreen()
  ];
  final PageStorageBucket _bucket = PageStorageBucket();
  Widget? _currentScreen;

  @override
  void initState() {
    super.initState();
    _currentScreen = const BarcodeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageStorage(bucket: _bucket, child: _currentScreen as Widget),
      floatingActionButton: SizedBox(
        height: 75,
        width: 75,
        child: FittedBox(
          child: FloatingActionButton(
            isExtended: false,
            child: FaIcon(
              FontAwesomeIcons.qrcode,
              color: currentTab == 0
                  ? const Color(primaryYellow)
                  : Colors.grey.shade300,
              size: 24,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
                _currentScreen = const BarcodeScreen();
                currentTab = 0;
              });
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreen = const ProfileScreen();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.userLarge,
                        color: currentTab == 2
                            ? const Color(primaryYellow)
                            : Colors.grey.shade300,
                        size: 22,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Profile',
                        style: currentTab == 2
                            ? const TextStyle(
                                color: Color(primaryBlack),
                                fontWeight: FontWeight.w700,
                                fontSize: 12)
                            : const TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreen = const DasboardScreen();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bookBookmark,
                        color: currentTab == 1
                            ? const Color(primaryYellow)
                            : Colors.grey.shade300,
                        size: 22,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Dashboard',
                        style: currentTab == 1
                            ? const TextStyle(
                                color: Color(primaryBlack),
                                fontWeight: FontWeight.w700,
                                fontSize: 12)
                            : const TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
