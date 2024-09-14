import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vacancies_app/Vacancy/screen/vacancy_list_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 2), () async {
      Get.offAll(VacancyListScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 100,
              image: AssetImage('assets/images/UNchr.png'),
            ),
          ],
        ),
      ),
    );
  }
}
