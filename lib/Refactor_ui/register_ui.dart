import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';
import 'package:store_products/widgets/custom_Textformfield.dart';
import 'package:store_products/widgets/custom_container.dart';

class Registerui extends StatefulWidget {
  const Registerui({super.key});

  @override
  State<Registerui> createState() => _RegisteruiState();
}

class _RegisteruiState extends State<Registerui> {
  bool selecticon = true;
  XFile? photo;
  Future<void> image() async {
    final pickerimage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      photo = pickerimage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SingleChildScrollView(
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
