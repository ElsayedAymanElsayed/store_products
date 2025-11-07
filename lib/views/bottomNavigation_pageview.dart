import 'package:flutter/material.dart';
import 'package:store_products/Refactor_ui/custom_BottomNavigationBar.dart';
import 'package:store_products/views/buyNow_view.dart';
import 'package:store_products/views/cart_view.dart';
import 'package:store_products/views/home_view.dart';
import 'package:store_products/views/profile_view.dart';

class BottomnavigationPageview extends StatefulWidget {
  const BottomnavigationPageview({super.key});
  static final String id = 'page view';
  @override
  State<BottomnavigationPageview> createState() =>
      _BottomnavigationPageviewState();
}

class _BottomnavigationPageviewState extends State<BottomnavigationPageview> {
  late List<Widget> screens = [];
  int selectpage = 0;
  late PageController controller;
  @override
  void initState() {
    screens = [HomeView(), CartView(), BuynowView(), ProfileView()];
    controller = PageController(initialPage: selectpage);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: controller, children: screens),

      bottomNavigationBar: CustomBottomnavigationbar(
        currentindex: selectpage,
        ontap: (value) {
          setState(() {
            selectpage = value;
          });
          controller.jumpToPage(selectpage);
        },
      ),
    );
  }
}
