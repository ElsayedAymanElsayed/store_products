import 'package:flutter/material.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Textformfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static final String id = 'Login view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          decoration: BoxDecoration(color: kprimryColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(children: [CustomTextformfield()]),
          ),
        ),
      ),
    );
  }
}
