import 'package:advice_app/ui/widgets/bottom_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:advice_app/ui/screens/favorite_screen.dart';
import 'package:advice_app/ui/screens/home_screen.dart';
import 'package:advice_app/ui/screens/profile_screen.dart';
import 'package:advice_app/ui/screens/settings_screen.dart';

class MainContainer extends StatefulWidget {
  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: screens[selectedIndex],
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.create,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                BottomBarIcon(
                  isSelected: selectedIndex == 0,
                  icon: Icons.home,
                  selectedIconCallback: () {
                    setState(() {
                      selectedIndex = 0;
                      print(selectedIndex);
                    });
                  },
                ),
                BottomBarIcon(
                  isSelected: selectedIndex == 1,
                  icon: Icons.bookmark,
                  selectedIconCallback: () {
                    setState(() {
                      selectedIndex = 1;
                      print(selectedIndex);
                    });
                  },
                ),
                SizedBox(
                  width: 30.0,
                ),
                BottomBarIcon(
                  isSelected: selectedIndex == 2,
                  icon: Icons.settings,
                  selectedIconCallback: () {
                    setState(() {
                      selectedIndex = 2;
                      print(selectedIndex);
                    });
                  },
                ),
                BottomBarIcon(
                  isSelected: selectedIndex == 3,
                  icon: Icons.person,
                  selectedIconCallback: () {
                    setState(() {
                      selectedIndex = 3;
                      print(selectedIndex);
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
