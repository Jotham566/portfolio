import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Name'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileSection(),
            ProjectsSection(),
            ExperienceSection(),
            EducationSection(),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile_picture.png'), // Add your profile picture to assets
          ),
          const SizedBox(height: 10),
          const Text('Your Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Text('Data Scientist | Machine Learning Engineer'),
          const Text('Based in Your City, Country'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {
                  // Add email functionality
                },
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {
                  // Add LinkedIn URL
                },
              ),
              IconButton(
                icon: const Icon(Icons.code),
                onPressed: () {
                  // Add GitHub URL
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ProjectTile(
            title: 'AirBnB listings price prediction',
            description: 'Prediction of AirBnB prices growth in Milan...',
            imageUrl: 'assets/airbnb.png',
          ),
          ProjectTile(
            title: 'Spotify visual data art',
            description: 'Algorithm creates cool animations for every music track...',
            imageUrl: 'assets/spotify.png',
          ),
          // Add more ProjectTiles as needed
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectTile({super.key, required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(description),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add navigation to detailed project page or external link
              },
              child: const Text('Read more →'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Experience', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ExperienceTile(
            title: 'Data Analyst at Amazon',
            duration: 'March 2022 - Present',
            description: 'Leading the development and implementation of data analytics strategies...',
          ),
          // Add more ExperienceTiles as needed
        ],
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  final String title;
  final String duration;
  final String description;

  const ExperienceTile({super.key, required this.title, required this.duration, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(duration, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          EducationTile(
            title: 'Master of Science in Quantitative Economics',
            institution: 'University of London, 2022',
          ),
          // Add more EducationTiles as needed
        ],
      ),
    );
  }
}

class EducationTile extends StatelessWidget {
  final String title;
  final String institution;

  const EducationTile({super.key, required this.title, required this.institution});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(institution, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
