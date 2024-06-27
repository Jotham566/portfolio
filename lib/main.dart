import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jotham Martin Wambi Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            HeroSection(),
            WhoAmISection(),
            PortfolioSection(),
            ExperienceSection(),
            EducationSection(),
            TestimonialsSection(),
            ContactSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Matt Dancho',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text('HOME')),
              TextButton(onPressed: () {}, child: const Text('ABOUT')),
              TextButton(onPressed: () {}, child: const Text('PORTFOLIO')),
              TextButton(onPressed: () {}, child: const Text('CONTACT')),
            ],
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello, I'm Jotham.",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Data Scientist, Trainer &\nMentor",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Jotham is the founder of Business Science, an online data science school that helps students become a data scientist in 6-months or less.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('Contact Matt'),
                ),
                const SizedBox(height: 32),
                const Row(
                  children: [
                    IconButton(icon: FaIcon(FontAwesomeIcons.linkedin), onPressed: null),
                    IconButton(icon: FaIcon(FontAwesomeIcons.github), onPressed: null),
                    IconButton(icon: FaIcon(FontAwesomeIcons.twitter), onPressed: null),
                    IconButton(icon: FaIcon(FontAwesomeIcons.youtube), onPressed: null),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.network(
              'https://via.placeholder.com/500x300?text=Code+Editor+Image',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class WhoAmISection extends StatelessWidget {
  const WhoAmISection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              'https://via.placeholder.com/400x400?text=Matt+Image',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Who am I?",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  "I love helping data scientists. My passion is training. But, when I am not teaching, I am an Entrepreneur & Software Developer.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                const Text(
                  "My way of living is applying data science to business. I create value for companies by understanding the financial cost of problems and delivering a return on investment with my solutions. I enjoy teaching, working with stakeholders, and making better decisions with data.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('About Matt'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          PortfolioItem(
            title: "Sales Demand Forecast Application",
            description: "This application helps Marketing & Sales identify trends in customer purchasing behavior and plan for future demand. Predictive Dashboard Course using Machine Learning.",
            image: 'https://via.placeholder.com/800x400?text=Sales+Demand+Forecast',
          ),
          SizedBox(height: 32),
          PortfolioItem(
            title: "Product Price Recommendation",
            description: "This application helps Marketing & R&D Teams automate product price and predict new products. Part of my 101 Machine Learning Algorithms applied to 101 Business Problems Course using Machine Learning.",
            image: 'https://via.placeholder.com/800x400?text=Product+Price+Recommendation',
          ),
        ],
      ),
    );
  }
}

class PortfolioItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const PortfolioItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Text(description),
        const SizedBox(height: 16),
        Image.network(image, fit: BoxFit.cover),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          child: const Text('Learn Application'),
        ),
      ],
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Experience",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 32),
          const ExperienceItem(
            title: "Founder",
            company: "Business Science",
            duration: "Jan 2017 - Present",
          ),
          const ExperienceItem(
            title: "Director of Product Engineering & Market Development",
            company: "Axion Energy",
            duration: "Jan 2014 - Jan 2017",
          ),
          const ExperienceItem(
            title: "Manager of Sales Engineering",
            company: "Axion Power",
            duration: "Jun 2011 - Jan 2014",
          ),
          const ExperienceItem(
            title: "Manager of Product Engineering",
            company: "Axion Power",
            duration: "Feb 2009 - Jun 2011",
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text('Download CV'),
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String company;
  final String duration;

  const ExperienceItem({
    super.key,
    required this.title,
    required this.company,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(company, style: const TextStyle(color: Colors.red)),
          Text(duration, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Expanded(child: EducationItem(university: "Penn State University")),
              Expanded(child: EducationItem(university: "University of Pittsburgh")),
              Expanded(child: EducationItem(university: "Penn State University")),
            ],
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String university;

  const EducationItem({super.key, required this.university});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Text(university, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Testimonials",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Expanded(child: TestimonialItem(
                text: "It has helped 6-months ago students have Business Science Course with Matt...",
                name: "Justin Kernon, PhD",
                title: "Lead Data Scientist, Insurance Naval",
              )),
              Expanded(child: TestimonialItem(
                text: "Because of all the R courses Matt Davis has provided...",
                name: "Chris Selig",
                title: "Business Intelligence Developer",
              )),
              Expanded(child: TestimonialItem(
                text: "Matt's data time my life. In just 5-10 spare time...",
                name: "Melanie Hubert-Ciorann",
                title: "Data Science Business",
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class TestimonialItem extends StatelessWidget {
  final String text;
  final String name;
  final String title;

  const TestimonialItem({
    super.key,
    required this.text,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('"$text"', style: const TextStyle(fontStyle: FontStyle.italic)),
          const SizedBox(height: 16),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(title),
        ],
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              'https://via.placeholder.com/400x400?text=Matt+Image',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact Matt",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text("Phone Number"),
                const Text("Email"),
                const Text("Address"),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('Send Message'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: const Center(
        child: Text(
          '© 2024 Jotham Martin Wambi. All rights reserved.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}