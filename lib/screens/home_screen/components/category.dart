import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 165,
      child: GridView.count(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 23,
        childAspectRatio: 3 / 2,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildCategory(
            'PLN',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'Pulsa',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'Voucher Game',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'Invest',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'PLN',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'Pulsa',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'Voucher Game',
            "assets/icons/pln_icon.svg",
          ),
          _buildCategory(
            'Invest',
            "assets/icons/pln_icon.svg",
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(String title, String imageUrl) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            child: SvgPicture.asset(
              imageUrl,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
