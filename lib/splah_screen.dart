import 'package:flutter/material.dart';
import 'package:shopping/screen_folder/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Đặt độ trễ 3 giây trước khi chuyển sang màn hình chính
    Future.delayed(const Duration(seconds: 1), () {
      // Chuyển sang màn hình chính (đây là ví dụ, bạn cần thay thế bằng màn hình chính của ứng dụng của bạn)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const Login(), // Thay thế HomeScreen bằng màn hình chính của bạn
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Center(
          child: Image.asset(
            'assets/logo.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ],
    ));
  }
}
