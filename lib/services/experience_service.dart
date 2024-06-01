import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import '../models/experience.dart';

class ExperienceService {
  Future<List<Experience>> loadExperienceData() async {
    final String response =
        await rootBundle.rootBundle.loadString('assets/experience.json');
    final List<dynamic> data = await json.decode(response);
    return data.map((json) => Experience.fromJson(json)).toList();
  }
}
