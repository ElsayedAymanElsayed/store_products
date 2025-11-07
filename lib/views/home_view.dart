import 'package:flutter/material.dart';
import 'package:store_products/Refactor_ui/appBar_home.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static final String id = 'Home view';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimryColor,
        title: CustomText(text: 'Home', size: 26),
        actions: [AppBarHome()],
      ),
    );
  }
}
