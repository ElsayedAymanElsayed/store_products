import 'package:flutter/material.dart';
import 'package:store_products/Refactor/appBar_home.dart';
import 'package:store_products/constants.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kprimryColor, actions: [AppBarHome()]),
    );
  }
}
