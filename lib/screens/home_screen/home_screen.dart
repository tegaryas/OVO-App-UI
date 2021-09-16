import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_app/screens/home_screen/components/category.dart';
import 'package:ovo_app/screens/home_screen/components/header.dart';
import 'package:ovo_app/screens/home_screen/components/promo.dart';
import 'package:ovo_app/utils/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderOvo(),
              CategoryGrid(),
              Divider(
                thickness: 10,
                color: Color(0xFFf4f4f4),
              ),
              InfoPromoContainer(),
              Divider(
                thickness: 10,
                color: Color(0xFFf4f4f4),
              ),
              InfoPromoContainer(),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: ColorPallete.primaryColor,
      elevation: 0,
      title: SvgPicture.asset("assets/icons/ovo_logo.svg"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Icon(
                Icons.notifications,
                size: 25,
                color: Colors.white,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorPallete.primaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
