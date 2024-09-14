import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:vacancies_app/Vacancy/model/vacancy_model.dart';

class VacancyDetailsScreen extends StatelessWidget {
  final Vacancy vacancy;

  VacancyDetailsScreen({required this.vacancy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vacancy.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: vacancy.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text('Title: ${vacancy.title}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Company: ${vacancy.company}', style: TextStyle(fontSize: 16)),
              Text('Location: ${vacancy.location}', style: TextStyle(fontSize: 16)),
              Text('Salary: ${vacancy.salary}', style: TextStyle(fontSize: 16)),
              Text('Date Posted: ${vacancy.datePosted}', style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              Text('Description:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(vacancy.description, style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              Text('Long Description:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(vacancy.longDescription, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}