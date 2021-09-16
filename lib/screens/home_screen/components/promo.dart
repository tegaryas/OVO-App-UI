import 'package:flutter/material.dart';
import 'package:ovo_app/utils/color.dart';

class InfoPromoContainer extends StatefulWidget {
  const InfoPromoContainer({Key? key}) : super(key: key);

  @override
  _InfoPromoContainerState createState() => _InfoPromoContainerState();
}

class _InfoPromoContainerState extends State<InfoPromoContainer> {
  int _selectedIndex = 0;
  var controller = PageController(
    viewportFraction: 0.92,
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 15,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Info dan Promo Spesial',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorPallete.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _buildCarouselPromo(controller),
        ],
      ),
    );
  }

  Widget _buildCarouselPromo(PageController controller) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 135,
            child: PageView.builder(
              controller: controller,
              itemCount: 5,
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/promo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                (index) {
                  return _selectedIndex == index
                      ? Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 2,
                          ),
                          height: 7,
                          width: 14,
                          decoration: BoxDecoration(
                            color: ColorPallete.secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 2,
                          ),
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                        );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
