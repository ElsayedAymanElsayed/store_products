import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Gap(30),
              CircleAvatar(
                radius: 45,
                backgroundColor: kprimryColor,
                backgroundImage: AssetImage('assets/images/persons1.png'),
              ),
              Gap(30),
              TextField(
                decoration: InputDecoration(
                  fillColor: kprimryColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Gap(30),
              TextField(
                decoration: InputDecoration(
                  fillColor: kprimryColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Gap(30),
              TextField(
                decoration: InputDecoration(
                  fillColor: kprimryColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
