import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/helpers/showSnackBar.dart';
import 'package:store_products/views/rootviews.dart';
import 'package:store_products/widgets/custom_Text.dart';
import 'package:store_products/widgets/custom_Textformfield.dart';
import 'package:store_products/widgets/custom_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Registerui extends StatefulWidget {
  const Registerui({super.key});
  @override
  State<Registerui> createState() => _RegisteruiState();
}

class _RegisteruiState extends State<Registerui> {
  bool selecticon = true;
  XFile? photo;
  String? name, email, password;
  GlobalKey<FormState> formstate = GlobalKey();
  Future<void> image() async {
    final pickerimage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      photo = pickerimage;
    });
  }

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addcollection() async {
    await users.add({
      'name': name,
      'email': email,
      'password': password,
      'image': photo!.path,
      'AtCreate': DateTime.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Form(
        key: formstate,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  image();
                });
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: kprimryColor,
                    backgroundImage: photo == null
                        ? AssetImage('assets/images/persons1.png')
                        : FileImage(File(photo!.path)),
                  ),
                  Positioned(
                    top: 0,
                    left: 96,
                    right: 0,
                    bottom: -88,
                    child: Icon(Icons.camera_alt, color: kwiteColor),
                  ),
                ],
              ),
            ),
            const Gap(8),
            CustomText(text: 'Register', size: 22),
            const Gap(30),
            CustomTextformfield(
              vaildtion: (value) {
                if (value!.isEmpty) {
                  return 'field is required';
                }
                if (value.contains(' ')) {
                  return 'Username No spaces';
                } else {
                  return null;
                }
              },
              onchanged: (value) {
                name = value;
              },
              hint: 'Username',
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, color: kprimryColor),
              ),
            ),
            const Gap(15),
            CustomTextformfield(
              keyboardType: TextInputType.emailAddress,
              vaildtion: (value) {
                if (value!.isEmpty) {
                  return 'field is required';
                }
                if (value.contains(' ')) {
                  return 'Email No spaces';
                }
                if (!value.endsWith('@gmail.com')) {
                  return 'write Email an right Format';
                } else {
                  return null;
                }
              },
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
              length: 9,
              obscuretext: selecticon,
              vaildtion: (value) {
                if (value!.isEmpty) {
                  return 'field is required';
                }
                if (value.contains(' ')) {
                  return 'Password No spaces';
                }
                if (value.length < 9) {
                  return 'Password is must be 9 Numbers';
                } else {
                  return null;
                }
              },
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
              text: 'Register',
              ontap: () async {
                if (formstate.currentState!.validate()) {
                  await chackinemailAndpassword(context);
                  await addcollection();
                }
              },
            ),
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

  Future<void> chackinemailAndpassword(BuildContext context) async {
    try {
      await createAccount();
      showSnackBar(context, 'Your account has been created');
      Navigator.pushNamed(context, RootView.id, arguments: photo);
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        showSnackBar(context, 'The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar(context, 'The account already exists for that email');
      }
    } catch (e) {
      showSnackBar(context, '${e.toString()}');
    }
  }

  Future<void> createAccount() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
