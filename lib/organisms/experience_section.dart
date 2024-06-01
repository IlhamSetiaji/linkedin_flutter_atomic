import 'package:flutter/material.dart';
import '../models/experience.dart';
import '../atoms/text_widget.dart';

class ExperienceSection extends StatelessWidget {
  final List<Experience> experiences;

  const ExperienceSection({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: experiences.map((experience) {
        return Card(
          child: ListTile(
            leading: Icon(Icons.work),
            title: TextWidget(
              text: experience.title,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: experience.company,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                TextWidget(
                  text: experience.duration,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                TextWidget(
                  text: experience.location,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                if (experience.skills.isNotEmpty)
                  TextWidget(
                    text: experience.skills,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
