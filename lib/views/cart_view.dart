import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:store_products/Refactor/appBar_home.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/cubit/cubit_cart_cubit.dart';
import 'package:store_products/widgets/custom_bottom.dart';
import 'package:store_products/widgets/custom_cartandList.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = context.read<CubitCart>().products;
    if (isloading) {
      return Center(child: CircularProgressIndicator(color: kprimryColor));
    } else {
      return Scaffold(
        backgroundColor: kwiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kprimryColor,
          actions: [AppBarHome()],
          title: CircleAvatar(
            backgroundColor: kprimryColor,
            radius: 25,
            backgroundImage: AssetImage('assets/images/persons1.png'),
          ),
        ),
        body: BlocBuilder<CubitCart, CartState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 445,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return CustomCartandlist(product: products[index]);
                    },
                  ),
                ),
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Gap(20),
                    CustomBottom(
                      text: '\$${context.read<CubitCart>().price.round()}',
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      );
    }
  }
}
