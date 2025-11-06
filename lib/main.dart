import 'package:flutter/material.dart';
import 'package:store_products/views/login_view.dart';
import 'package:store_products/views/register_view.dart';
import 'package:store_products/views/splash_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => LoginView(),
        SplashView.id: (context) => SplashView(),
        RegisterView.id: (context) => RegisterView(),
      },

      initialRoute: SplashView.id,
    );
  }
}
