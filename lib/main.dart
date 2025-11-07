import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_products/firebase_options.dart';
import 'package:store_products/views/home_view.dart';
import 'package:store_products/views/login_view.dart';
import 'package:store_products/views/register_view.dart';
import 'package:store_products/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
        HomeView.id: (context) => HomeView(),
      },
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      initialRoute: HomeView.id,
    );
  }
}
