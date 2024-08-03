import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String _avatarUrl = 'assets/images/avatar.jpeg';
  final String _githubUrl = 'https://github.com/S-Bharath16';
  final String _linkedinUrl = 'https://www.linkedin.com/in/bharathssss/';
  final String _instagramUrl = 'https://www.instagram.com/bharath_.16._/';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(_avatarUrl),
            ),
            SizedBox(height: 20),
            Text(
              'S Bharath',
              style: textTheme.headlineSmall,
            ),
            Text(
              'Flutter Developer',
              style: textTheme.titleMedium,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIcon(context, 'assets/icons/github.png', 'GitHub'),
                SizedBox(width: 20),
                _buildIcon(context, 'assets/icons/linkedin.png', 'LinkedIn'),
                SizedBox(width: 20),
                _buildIcon(context, 'assets/icons/instagram.png', 'Instagram'),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'GitHub: S-Bharath16',
              style: textTheme.bodyMedium,
            ),
            Text(
              'LinkedIn: bharathssss',
              style: textTheme.bodyMedium,
            ),
            Text(
              'Instagram: bharath_.16._',
              style: textTheme.bodyMedium,
            ),
            Spacer(),
            Text(
              'Version 1.0.0',
              style: textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
            Text(
              'This app helps you manage your tasks efficiently. You can add, update, and delete tasks. The app also provides notifications to remind you of your tasks.',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
            Text(
              'Developed by Bharath',
              style: textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context, String assetPath, String id) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          child: Image.asset(
            assetPath,
            width: 40,
            height: 40,
          ),
        ),
        SizedBox(height: 5),
        Text(
          id,
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
