import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/Refactor_ui/login_ui.dart';
import 'package:store_products/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static final String id = 'Login view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          decoration: BoxDecoration(
            color: kprimryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [LoginUi(), Gap(150)]),
          ),
        ),
      ),
    );
  }
}
