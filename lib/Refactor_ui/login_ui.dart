import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/views/register_view.dart';
import 'package:store_products/widgets/custom_Text.dart';
import 'package:store_products/widgets/custom_Textformfield.dart';
import 'package:store_products/widgets/custom_container.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  bool selecticon = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          const Gap(20),
          CustomText(text: 'Login in', size: 22),
          const Gap(30),
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
            obscuretext: selecticon,
            onchanged: (value) {},
            hint: 'Password',
            icon: IconButton(
              onPressed: () => setState(() {
                selecticon = !selecticon;
              }),
              icon: Icon(
                selecticon ? Icons.visibility_off : Icons.visibility,
                color: kprimryColor,
              ),
            ),
          ),
          const Gap(20),
          CustomContainer(text: 'Login', ontap: () {}),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: 'don\'t hava an account? ', size: 16),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, RegisterView.id),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.green.shade800, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
