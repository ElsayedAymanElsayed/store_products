import 'package:flutter/material.dart';
import 'package:store_products/Refactor/appBar_home.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_cart.dart';

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
      backgroundColor: kwiteColor,
      appBar: AppBar(
        backgroundColor: kprimryColor,
        title: CircleAvatar(
          backgroundColor: kprimryColor,
          radius: 25,
          backgroundImage: AssetImage('assets/images/persons1.png'),
        ),
        actions: [AppBarHome()],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 25,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemCount: 30,
          itemBuilder: (context, index) {
            return CustomCart();
          },
        ),
      ),
    );
  }
}
