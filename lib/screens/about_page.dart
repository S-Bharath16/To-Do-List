import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  final String _avatarUrl = 'assets/images/avatar.jpeg';
  final String _githubUrl = 'https://github.com/S-Bharath16';
  final String _linkedinUrl = 'https://www.linkedin.com/in/bharathssss/';
  final String _instagramUrl = 'https://www.instagram.com/bharath_.16._/';

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
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
                IconButton(
                  icon: Image.asset('assets/icons/github.png'),
                  iconSize: 40,
                  onPressed: () => _launchUrl(_githubUrl),
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Image.asset('assets/icons/linkedin.png'),
                  iconSize: 40,
                  onPressed: () => _launchUrl(_linkedinUrl),
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Image.asset('assets/icons/instagram.png'),
                  iconSize: 40,
                  onPressed: () => _launchUrl(_instagramUrl),
                ),
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
}
