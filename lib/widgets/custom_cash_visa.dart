import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/widgets/custom_Text.dart';

class CustomCashVisa extends StatefulWidget {
  const CustomCashVisa({super.key});

  @override
  State<CustomCashVisa> createState() => _CustomCashVisaState();
}

class _CustomCashVisaState extends State<CustomCashVisa> {
  String selecedTap = 'Cash';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          tileColor: Color(0xff3c2f2f),
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: kprimryColor,
            child: Image.asset(
              'assets/images/dollar_white.png',
              height: 50,
              width: 50,
            ),
          ),
          title: CustomText(
            text: 'Cash on Delivery',
            color: Colors.white,
            size: 15,
            fontWeight: FontWeight.w500,
          ),
          trailing: Radio(
            activeColor: Colors.blue,
            value: 'Cash',
            groupValue: selecedTap,
            onChanged: (value) {
              setState(() {
                selecedTap = value!;
              });
            },
          ),
        ),

        Gap(14),
        Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 10,
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: -10, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            tileColor: kwiteColor,
            leading: Image.asset(
              'assets/images/visa.png',
              height: 70,
              width: 70,
            ),
            title: CustomText(
              text: 'Debit card',
              color: Colors.grey.shade800,
              size: 15,
              fontWeight: FontWeight.w500,
            ),
            subtitle: CustomText(
              text: '3566 **** **** 0505',
              color: Colors.grey,
              size: 13,
              fontWeight: FontWeight.w500,
            ),
            trailing: Radio(
              activeColor: Colors.blue,
              value: 'Debit',
              groupValue: selecedTap,
              onChanged: (value) {
                setState(() {
                  selecedTap = value!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
