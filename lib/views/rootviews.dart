import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_products/Refactor/custom_BottomNavigationBar.dart';
import 'package:store_products/views/buyNow_view.dart';
import 'package:store_products/views/cart_view.dart';
import 'package:store_products/views/home_view.dart';
import 'package:store_products/views/profile_view.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});
  static final String id = 'page view';
  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late List<Widget> screens = [];
  int selectpage = 0;
  late PageController controller;
  XFile? photo;
  @override
  void initState() {
    screens = [HomeView(photo: photo), CartView(), BuynowView(), ProfileView()];
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
    photo = ModalRoute.of(context)!.settings.arguments as XFile;
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),

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
