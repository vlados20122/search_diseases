import 'package:flutter/material.dart';
import 'package:search_diseases/modules/login/screen/auth_screen.dart';
import 'package:search_diseases/utils/navigate_mixin_utils.dart';

class SplashScreen extends StatefulWidget with NavigateMixin {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
