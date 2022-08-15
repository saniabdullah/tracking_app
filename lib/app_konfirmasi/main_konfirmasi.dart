import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tracking_app/app_konfirmasi/screens/dasboard/dasboard_konfirmasi_screen.dart';
import 'package:tracking_app/app_konfirmasi/screens/profile/profile_konfirmasi_screen.dart';
import 'package:tracking_app/app_konfirmasi/screens/report/report_konfirmasi_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class MainScreenKonfirmasi extends StatefulWidget {
  const MainScreenKonfirmasi({Key? key}) : super(key: key);

  @override
  State<MainScreenKonfirmasi> createState() => _MainScreenKonfirmasiState();
}

class _MainScreenKonfirmasiState extends State<MainScreenKonfirmasi> {
  int currentTab = 0;
  final List<Widget> screens = [
    const ProfileKonfirmasiScreen(),
    const DasboardKonfirmasiScreen(),
    const ProfileKonfirmasiScreen()
  ];

  final PageStorageBucket _bucket = PageStorageBucket();
  Widget? _currentScreen;

  @override
  void initState() {
    super.initState();
    _currentScreen = const DasboardKonfirmasiScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageStorage(
          bucket: _bucket,
          child: _currentScreen as Widget,
        ),
        floatingActionButton: SizedBox(
          height: 75,
          width: 75,
          child: FittedBox(
              child: FloatingActionButton(
            isExtended: false,
            child: FaIcon(
              FontAwesomeIcons.house,
              color: currentTab == 0
                  ? const Color(primaryYellow)
                  : Colors.grey.shade300,
              size: 24,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
                _currentScreen = const DasboardKonfirmasiScreen();
                currentTab = 0;
              });
            },
          )),
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
                      _currentScreen = const ProfileKonfirmasiScreen();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.userLarge,
                          color: currentTab == 2
                              ? const Color(primaryYellow)
                              : Colors.grey.shade300,
                          size: 22),
                      const SizedBox(
                        height: 5,
                      ),
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
                const SizedBox(
                  width: 40,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreen = const ReportKonfirmasiScreen();
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
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Report',
                          style: currentTab == 1
                              ? const TextStyle(
                                  color: Color(primaryBlack),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12)
                              : const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                        )
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}
