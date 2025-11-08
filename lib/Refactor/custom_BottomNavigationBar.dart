import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_products/constants.dart';

class CustomBottomnavigationbar extends StatelessWidget {
  const CustomBottomnavigationbar({
    super.key,
    required this.ontap,
    required this.currentindex,
  });
  final Function(int)? ontap;
  final int currentindex;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: ontap,
        unselectedItemColor: Colors.grey.shade700,
        selectedItemColor: kwiteColor,
        backgroundColor: kprimryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartShopping),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.creditCard),
            label: 'Buy Now',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
