import 'package:flutter/material.dart';
import '../atoms/text_widget.dart';

class AnalyticsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const AnalyticsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: TextWidget(
          text: title,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        subtitle: TextWidget(
          text: subtitle,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
