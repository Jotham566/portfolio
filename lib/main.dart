import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Science Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
        title: const Text('Jotham Martin Wambi - Data Science Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Your Name',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Center(
                child: Text(
                  'Data Scientist | Machine Learning Engineer',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'About Me',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Text(
                'Brief introduction about yourself, your passion for data science, and your career goals.',
              ),
              const SizedBox(height: 20),
              Text(
                'Projects',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const ProjectCard(
                title: 'Project 1',
                description: 'Description of project 1',
                imageAsset: 'assets/project1.jpg',
                tags: ['Python', 'Machine Learning'],
              ),
              const ProjectCard(
                title: 'Project 2',
                description: 'Description of project 2',
                imageAsset: 'assets/project2.jpg',
                tags: ['R', 'Data Visualization'],
              ),
              const SizedBox(height: 20),
              Text(
                'Skills',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: <Widget>[
                  Chip(label: Text('Python')),
                  Chip(label: Text('R')),
                  Chip(label: Text('SQL')),
                  Chip(label: Text('Machine Learning')),
                  Chip(label: Text('Data Visualization')),
                  Chip(label: Text('Statistical Analysis')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;
  final List<String> tags;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(imageAsset),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: tags.map((tag) => Chip(label: Text(tag))).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}