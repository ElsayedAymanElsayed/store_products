import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';
import 'package:store_products/widgets/custom_Textformfield.dart';
import 'package:store_products/widgets/custom_container.dart';

class Registerui extends StatelessWidget {
  const Registerui({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(8),
            CustomText(text: 'Register', size: 22),
            const Gap(30),
            CustomTextformfield(
              onchanged: (value) {},
              hint: 'Username',
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, color: kprimryColor),
              ),
            ),
            const Gap(15),
            CustomTextformfield(
              onchanged: (value) {},
              hint: 'Email',
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.email, color: kprimryColor),
              ),
            ),
            const Gap(15),
            CustomTextformfield(
              onchanged: (value) {},
              hint: 'Password',
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility, color: kprimryColor),
              ),
            ),
            const Gap(20),
            CustomContainer(text: 'Register', ontap: () {}),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: 'already hava an account? ', size: 16),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'Login ',
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
