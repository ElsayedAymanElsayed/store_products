import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/helpers/showSnackBar.dart';
import 'package:store_products/views/register_view.dart';
import 'package:store_products/views/rootviews.dart';
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
  String? email, password;
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Form(
        key: formstate,
        child: Column(
          children: [
            const Gap(20),
            CustomText(text: 'Login in', size: 22),
            const Gap(30),
            CustomTextformfield(
              vaildtion: (value) {
                if (value!.isEmpty) {
                  return 'field is required';
                }
                if (!value.endsWith('@gmail.com')) {
                  return 'Write Email an right Format';
                }
                if (value.contains(' ')) {
                  return 'Email No spaces';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              onchanged: (value) {
                email = value;
              },
              hint: 'Email',
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.email, color: kprimryColor),
              ),
            ),
            const Gap(15),
            CustomTextformfield(
              vaildtion: (value) {
                if (value!.isEmpty) {
                  return 'field is required';
                }
                if (value.length < 9) {
                  return 'Password an must be 9 Numbers';
                }
                if (value.contains(' ')) {
                  return 'Password No spaces';
                } else {
                  return null;
                }
              },
              length: 9,
              obscuretext: selecticon,
              onchanged: (value) {
                password = value;
              },
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
            const Gap(10),
            CustomContainer(
              text: 'Login',
              ontap: () async {
                if (formstate.currentState!.validate()) {
                  await chacksignin(context);
                }
              },
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: 'don\'t hava an account? ', size: 16),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, RegisterView.id),
                  child: Text(
                    'Register',
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

  Future<void> chacksignin(BuildContext context) async {
    try {
      await signinAccount();
      showSnackBar(context, 'Welcome');
      Navigator.pushNamed(context, RootView.id);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnackBar(context, 'No user found for that email');
      } else if (e.code == 'wrong-password') {
        showSnackBar(context, 'Wrong password');
      }
    } catch (e) {
      showSnackBar(context, '${e.toString()}');
    }
  }

  Future<void> signinAccount() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
