import 'package:flutter/material.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/views/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static final String id = 'splash view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, LoginView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/cart_splash.png', height: 150)],
        ),
      ),
    );
  }
}
