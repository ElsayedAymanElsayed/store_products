import 'package:flutter/material.dart';
import 'package:store_products/constants.dart';

class RegisterCircleavatar extends StatelessWidget {
  const RegisterCircleavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: kprimryColor,
          backgroundImage: AssetImage('assets/images/persons1.png'),
        ),
        Positioned(
          top: 0,
          left: 90,
          right: 0,
          bottom: -88,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt, color: kwiteColor),
          ),
        ),
      ],
    );
  }
}
