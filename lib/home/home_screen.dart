import 'package:flutter/material.dart';
import 'package:momento/home/tabs/favorite_tab.dart';
import 'package:momento/home/tabs/home_tab.dart';
import 'package:momento/home/tabs/profile_tab.dart';
import 'package:momento/l10n/app_localizations.dart';
import 'package:momento/utils/app_assets.dart';
import 'package:momento/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    // محاولة الحصول على الترجمة بشكل آمن لتجنب الانهيار (الشاشة السوداء)
    // final localization = AppLocalizations.of(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },

        items: [
          buildBottomNavigationBarItem(
            icon: AppAssets.homeIcon,
            label: 'Home',
            index: 0,
          ),
          buildBottomNavigationBarItem(
            icon: AppAssets.favoriteIcon,
            label: 'Favorite',
            index: 1,
          ),
          buildBottomNavigationBarItem(
            icon: AppAssets.profileIcon,
            label: 'Profile',
            index: 2,
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [
  Hometab(),
    FavoriteTab(),
    ProfileTab(),
  ];

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String icon,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: selectedBottomIcon(icon, index),
      label: label,
    );
  }

  Widget selectedBottomIcon(String icon, int index) {
    return selectedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: AppColors.mainDarkColor,
            ),
            child: ImageIcon(AssetImage(icon)),
          )
        : ImageIcon(AssetImage(icon));
  }
}
