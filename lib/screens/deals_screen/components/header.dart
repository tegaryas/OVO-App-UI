import 'package:flutter/material.dart';
import 'package:ovo_app/utils/color.dart';

class DealsBanner extends StatelessWidget {
  const DealsBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf8f8f8),
      child: Container(
        height: 90,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
            color: ColorPallete.primaryColor,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage('assets/images/deals_banner.png'),
              fit: BoxFit.cover,
            )),
        width: double.infinity,
      ),
    );
  }
}
