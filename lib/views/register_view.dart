import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/Refactor/register_ui.dart';
import 'package:store_products/constants.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static final String id = 'Register view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Container(
                decoration: BoxDecoration(
                  color: kprimryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [const Gap(10), Registerui(), const Gap(200)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
