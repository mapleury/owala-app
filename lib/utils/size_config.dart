import 'package:flutter/material.dart';

class SizeConfig {
  //media query class yg berfungsi untuk membuat aplikasi menjadi responsif
  //dgn cara mengambil ukuran aktual pada layar platform
  static MediaQueryData _mediaQueryData = MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window,
  );

  // variable yang menampung default size dari aplikasi,
  //sebelum di deploy ke platform yg spesifik dan mendapat
  //ukuran aktual dari platform tsb misal: di deploy ke platform android
  static double screenWidht = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

  // fungsinya adalah untuk pemanggilan awal ketika aplikasi dijalankan
  //dan untuk mendapatkan ukuran dari layar platform
  void init(BuildContext context) {
    //berfungsi untuk mengambil ukuran aktual dari platform
    //karena di dalam var _mediaQuery itu di dalamnnya memanggil class mediaQuery
    _mediaQueryData = MediaQuery.of(context);
    screenWidht = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

//menggunakan standar dari iphone x 812 x 375
double getProporsionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProporsionateScreenWidht(double inputWidht) {
  double screenWidht = SizeConfig.screenWidht;
  return (inputWidht / 375.0) * screenWidht;
}
