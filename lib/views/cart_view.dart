import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/Refactor/appBar_home.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_bottom.dart';
import 'package:store_products/widgets/custom_cartandList.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          SizedBox(
            height: 420,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 30,
              itemBuilder: (context, index) {
                return CustomCartandlist();
              },
            ),
          ),
          Gap(15),
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
              Gap(15),
              CustomBottom(text: '\$99'),
            ],
          ),
        ],
      ),
    );
  }
}
