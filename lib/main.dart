import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sandi/screen/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugu Pahlawan Surabaya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        // Tampilan splash screen dengan teks "Tugu Pahlawan Surabaya"
        splash: const Text(
          "Tugu Pahlawan Surabaya",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // Halaman berikutnya setelah splash screen adalah halaman login
        nextScreen: const Login(),
        // Animasi perputaran saat transisi splash screen ke halaman berikutnya
        splashTransition: SplashTransition.rotationTransition,
        // Warna latar belakang splash screen
        backgroundColor: Colors.blue,
      ),
    );
  }
}
