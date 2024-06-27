import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jotham Martin Wambi - Data Science Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
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
        title: const Text('Jotham Martin Wambi'),
        actions: [
          NavBarButton(title: 'About', onPressed: () => _navigateTo(context, 'About')),
          NavBarButton(title: 'Projects', onPressed: () => _navigateTo(context, 'Projects')),
          NavBarButton(title: 'Skills', onPressed: () => _navigateTo(context, 'Skills')),
          NavBarButton(title: 'Contact', onPressed: () => _navigateTo(context, 'Contact')),
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
                  const Hero(
                    tag: 'portfolio-title',
                    child: Text(
                      'Data Science Portfolio',
                      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const AboutSection(),
                  const SizedBox(height: 32),
                  const ProjectsSection(),
                  const SizedBox(height: 32),
                  const SkillsSection(),
                  const SizedBox(height: 32),
                  const ContactSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, String section) {
    // Implement smooth scrolling to the selected section
  }
}

class NavBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const NavBarButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Me', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const Text(
          'I am a passionate data scientist with expertise in machine learning, statistical analysis, and data visualization. '
          'My goal is to leverage data-driven insights to solve complex problems and drive innovation.',
        ),
      ],
    );
  }
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Projects', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const ProjectCard(
          title: 'Machine Learning Model for Predicting Stock Prices',
          description: 'Developed a LSTM-based model to predict stock prices using historical data and sentiment analysis.',
          imageUrl: 'assets/project1.jpg',
          tags: ['Python', 'Machine Learning', 'TensorFlow', 'Natural Language Processing'],
        ),
        const SizedBox(height: 16),
        const ProjectCard(
          title: 'Interactive Data Visualization Dashboard',
          description: 'Created an interactive dashboard using R Shiny to visualize and analyze COVID-19 data.',
          imageUrl: 'assets/project2.jpg',
          tags: ['R', 'Data Visualization', 'Shiny', 'ggplot2'],
        ),
      ],
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
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Implement project details page navigation
                  },
                  child: const Text('Learn More'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            SkillChip(label: 'Python', level: 0.9),
            SkillChip(label: 'R', level: 0.8),
            SkillChip(label: 'SQL', level: 0.85),
            SkillChip(label: 'Machine Learning', level: 0.85),
            SkillChip(label: 'Data Visualization', level: 0.9),
            SkillChip(label: 'Statistical Analysis', level: 0.8),
            SkillChip(label: 'Deep Learning', level: 0.75),
            SkillChip(label: 'Natural Language Processing', level: 0.7),
          ],
        ),
      ],
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  final double level;

  const SkillChip({super.key, required this.label, required this.level});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      avatar: CircularProgressIndicator(
        value: level,
        backgroundColor: Colors.grey[300],
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contact', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const Text('Get in touch with me for collaborations or opportunities:'),
        const SizedBox(height: 8),
        ListTile(
          leading: const Icon(Icons.email),
          title: const Text('Email'),
          subtitle: const Text('jotham.wambi@example.com'),
          onTap: () {
            // Implement email sending functionality
          },
        ),
        ListTile(
          leading: const Icon(Icons.link),
          title: const Text('LinkedIn'),
          subtitle: const Text('linkedin.com/in/jothamwambi'),
          onTap: () {
            // Implement LinkedIn profile opening
          },
        ),
        ListTile(
          leading: const Icon(Icons.code),
          title: const Text('GitHub'),
          subtitle: const Text('github.com/jothamwambi'),
          onTap: () {
            // Implement GitHub profile opening
          },
        ),
      ],
    );
  }
}