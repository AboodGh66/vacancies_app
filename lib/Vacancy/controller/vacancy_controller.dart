import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vacancies_app/Vacancy/model/vacancy_model.dart';
import 'dart:convert';

import 'package:vacancies_app/network/api_url.dart';

class VacancyController extends GetxController {
  var vacancies = <Vacancy>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getVacanciesData();
    super.onInit();
  }

  Future<void> getVacanciesData() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(ApiUrl.BaseUrl));
      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        vacancies.value =
            jsonResponse.map((data) => Vacancy.fromJson(data)).toList();
      } else {
        Get.snackbar('Error', 'Failed to load vacancies');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch data');
    } finally {
      isLoading(false);
    }
  }

}
