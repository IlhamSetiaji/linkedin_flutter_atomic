import 'package:flutter/material.dart';
import '../atoms/avatar.dart';
import '../atoms/text_widget.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Avatar(
          radius: 40,
          imageUrl: 'https://media.licdn.com/dms/image/D5603AQHtE0eCWud6Yw/profile-displayphoto-shrink_800_800/0/1664434159652?e=1722470400&v=beta&t=Kw9iglZ9whbWYlVswh1ZzvmMJu_xfk_xkJmJipgKDZo',
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: 'Ilham Setiaji',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              text: 'Backend & Web Developer',
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            TextWidget(
              text:
                  'Universitas Sebelas Maret\nSurakarta, Central Java, Indonesia',
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ],
    );
  }
}
