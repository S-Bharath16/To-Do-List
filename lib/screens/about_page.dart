import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  final String _avatarUrl = 'assets/images/avatar.jpeg';
  final String _githubUrl = 'https://github.com/S-Bharath16';
  final String _linkedinUrl = 'https://www.linkedin.com/in/bharathssss/';
  final String _instagramUrl = 'https://www.instagram.com/bharath_.16._/';

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
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
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton('assets/icons/github.png', _githubUrl),
                SizedBox(width: 20),
                _buildIconButton('assets/icons/linkedin.png', _linkedinUrl),
                SizedBox(width: 20),
                _buildIconButton('assets/icons/instagram.png', _instagramUrl),
              ],
            ),
            Spacer(),
            Text(
              'Version 1.0.0',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
            Text(
              'This app helps you manage your tasks efficiently. You can add, update, and delete tasks. The app also provides notifications to remind you of your tasks.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
            Text(
              'Developed by Bharath',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(String assetPath, String url) {
    return GestureDetector(
      onTap: () => _launchUrl(url),
      child: Container(
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
    );
  }
}
