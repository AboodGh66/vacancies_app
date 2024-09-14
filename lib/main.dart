import 'package:flutter/material.dart';
import 'package:vacancies_app/Vacancy/screen/vacancy_list_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Vacancy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VacancyListScreen(),
    );
  }
}

