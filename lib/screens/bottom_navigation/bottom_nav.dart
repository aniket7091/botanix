import 'package:botanix/core/colors/App_colors.dart';
import 'package:botanix/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../features/home/home.dart';
import '../../features/product_Details/product_detail_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    // CartScreen(),
    // PlantDetailScreen(),
    // FavoriteScreen(),
    // ProfileScreen(),
    //Center(child: Text("Home")),
    Center(child: Text("Likes")),
    Center(child: Text("Carts")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(Responsive.isMobile(context) ? 20 : 30),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: isDarkMode
                ? AppColors.bottomNavDark
                : AppColors.cardBackground,

            elevation: 0,
            iconSize: 26,

            selectedItemColor: Colors.green,
            unselectedItemColor: isDarkMode ? AppColors.softMint : Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,

            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },

            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/home.png")),
                activeIcon: ImageIcon(
                  AssetImage("assets/icons/home_filled.png"),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/heart.png")),
                activeIcon: ImageIcon(
                  AssetImage("assets/icons/heart_filled.png"),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/bag.png")),
                activeIcon: ImageIcon(
                  AssetImage("assets/icons/bag_filled.png"),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/user.png")),
                activeIcon: ImageIcon(
                  AssetImage("assets/icons/user_filled.png"),
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
