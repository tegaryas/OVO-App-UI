import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_app/screens/deals_screen/deals_screen.dart';
import 'package:ovo_app/screens/finance_screen/finance_screen.dart';
import 'package:ovo_app/screens/home_screen/home_screen.dart';
import 'package:ovo_app/screens/profile_screen/profile_screen.dart';
import 'package:ovo_app/utils/color.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentIndex = 0;
  Widget currentScreen = HomePage();

  setBottomBarIndex(int index) {
    setState(() {
      currentIndex = index;
    });
    switch (index) {
      case 0:
        {
          currentScreen = HomePage();
          break;
        }
      case 1:
        {
          currentScreen = DealsScreen();
          break;
        }
      case 2:
        {
          currentScreen = FinanceScreen();
          break;
        }
      case 3:
        {
          currentScreen = ProfileScreen();
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: _customNavBar(),
    );
  }

  Widget _customNavBar() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          height: 55,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setBottomBarIndex(0);
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/icons/home_icon.svg',
                              color: currentIndex == 0
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: currentIndex == 0
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      setBottomBarIndex(1);
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/icons/deals_icon.svg',
                              color: currentIndex == 1
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Deals',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: currentIndex == 1
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setBottomBarIndex(2);
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/icons/finance_icon.svg',
                              color: currentIndex == 2
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Finance',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: currentIndex == 2
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      setBottomBarIndex(3);
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/icons/profile_icon.svg',
                              color: currentIndex == 3
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: currentIndex == 3
                                  ? ColorPallete.primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 57,
                    width: 57,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: ColorPallete.primaryColor,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF9852e6),
                          Color(0xFF3a20c2),
                          Color(0xFF3a20c2),
                        ],
                      ),
                      image: DecorationImage(
                        scale: 15,
                        image: AssetImage('assets/icons/qris_logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
