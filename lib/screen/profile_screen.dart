import 'package:flutter/material.dart';
import '../molecules/profile_info.dart';
import '../molecules/analytics_card.dart';
import '../organisms/experience_section.dart';
import '../services/experience_service.dart';
import '../models/experience.dart';
import '../atoms/button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Experience> experienceData = [];

  @override
  void initState() {
    super.initState();
    loadExperienceData();
  }

  Future<void> loadExperienceData() async {
    ExperienceService service = ExperienceService();
    List<Experience> data = await service.loadExperienceData();
    setState(() {
      experienceData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ilham Setiaji'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileInfo(),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Open to',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const AnalyticsCard(
              icon: Icons.people,
              title: '25 profile views',
              subtitle: 'Discover who\'s viewed your profile.',
            ),
            const AnalyticsCard(
              icon: Icons.visibility,
              title: '0 post impressions',
              subtitle: 'Start a post to increase engagement. Past 7 days',
            ),
            const AnalyticsCard(
              icon: Icons.search,
              title: '9 search appearances',
              subtitle: 'See how often you appear in search results.',
            ),
            const SizedBox(height: 20),
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'I am a backend and web developer with a passion for building robust web applications. '
              'I have experience with various programming languages and frameworks, and I enjoy learning new technologies and improving my skills. '
              'Currently, I am studying at Universitas Sebelas Maret, Surakarta, Central Java, Indonesia.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Experience',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ExperienceSection(experiences: experienceData),
          ],
        ),
      ),
    );
  }
}
