import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_products/Refactor_ui/appBar_home.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static final String id = 'Home view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimryColor,
        title: CustomText(text: 'Home', size: 26),
        actions: [AppBarHome()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: kwiteColor,
        selectedItemColor: Colors.green.shade800,
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
