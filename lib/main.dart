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
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jotham Martin Wambi'),
        actions: [
          TextButton(child: const Text('About'), onPressed: () {}),
          TextButton(child: const Text('Projects'), onPressed: () {}),
          TextButton(child: const Text('Skills'), onPressed: () {}),
          TextButton(child: const Text('Contact'), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data Science Portfolio',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 32),
                  const ProjectCard(
                    title: 'Project 1',
                    description: 'Description of project 1',
                    imageUrl: 'assets/project1.jpg',
                    tags: ['Python', 'Machine Learning'],
                  ),
                  const SizedBox(height: 16),
                  const ProjectCard(
                    title: 'Project 2',
                    description: 'Description of project 2',
                    imageUrl: 'assets/project2.jpg',
                    tags: ['R', 'Data Visualization'],
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Skills',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  const Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
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
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover, height: 200, width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
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