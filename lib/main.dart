import 'package:ecommerce_application/utils/const.dart';
import 'package:ecommerce_application/views/auth/login_screen.dart';
import 'package:ecommerce_application/views/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(OwalaApp());
}

class OwalaApp extends StatefulWidget {
  const OwalaApp({super.key});

  @override
  State<OwalaApp> createState() => _OwalaAppState();
}

class _OwalaAppState extends State<OwalaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Owala App",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity
            .adaptivePlatformDensity, // mengatur kepadatan di setiap platform
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      // untuk mendefinisikan kelas apa yang akan tampil pertama kali saat aplikasi dijalankan
      initialRoute: '/login',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
