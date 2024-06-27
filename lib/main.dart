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
        primarySwatch: Colors.blue,
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
    final ScrollController scrollController = ScrollController();
    final heroKey = GlobalKey();
    final aboutKey = GlobalKey();
    final portfolioKey = GlobalKey();
    final contactKey = GlobalKey();

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Jotham Martin Wambi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          scrollToSection(scrollController, heroKey);
                        },
                        child: const Text('HOME'),
                      ),
                      TextButton(
                        onPressed: () {
                          scrollToSection(scrollController, aboutKey);
                        },
                        child: const Text('ABOUT'),
                      ),
                      TextButton(
                        onPressed: () {
                          scrollToSection(scrollController, portfolioKey);
                        },
                        child: const Text('PORTFOLIO'),
                      ),
                      TextButton(
                        onPressed: () {
                          scrollToSection(scrollController, contactKey);
                        },
                        child: const Text('CONTACT'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HeroSection(key: heroKey),
                WhoAmISection(key: aboutKey),
                PortfolioSection(key: portfolioKey),
                const ExperienceSection(),
                const EducationSection(),
                const TestimonialsSection(),
                ContactSection(key: contactKey),
                const Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void scrollToSection(ScrollController controller, GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black,
      child: const Center(
        child: Text(
          '© 2024 Jotham Martin Wambi. All rights reserved.',
          style: TextStyle(color: Colors.white),
        ),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello, I'm Jotham Martin Wambi.",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Data Scientist, Trainer & Mentor",
                  style: TextStyle(fontSize: 28, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Text(
                  "I help data scientists become more valuable. I've written several books on data science and created courses that help students become a data scientist in 6 months or less.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('Contact Jotham'),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    IconButton(icon: const FaIcon(FontAwesomeIcons.linkedin), onPressed: () {}),
                    IconButton(icon: const FaIcon(FontAwesomeIcons.github), onPressed: () {}),
                    IconButton(icon: const FaIcon(FontAwesomeIcons.twitter), onPressed: () {}),
                    IconButton(icon: const FaIcon(FontAwesomeIcons.youtube), onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(
              'assets/business_analysis.jpg',
              fit: BoxFit.cover,
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
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/profile_picture.png'),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Who am I?",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  "I love helping data scientists. My passion is training. But, when I am not teaching, I am an Entrepreneur & Software Developer.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  "My way of living is applying data science to business. I create value for companies by understanding the financial cost of problems and delivering a return on investment with my solutions. I enjoy teaching, working with stakeholders, and making better decisions with data.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('About Jotham'),
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
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          PortfolioItem(
            title: "Sales Demand Forecast Application",
            description: "This application helps Marketing & Sales identify trends in customer purchasing behavior and plan for future demand. Predictive Dashboard Course using Machine Learning.",
            image: 'assets/project1.jpg',
          ),
          SizedBox(height: 32),
          PortfolioItem(
            title: "Product Price Recommendation",
            description: "This application helps Marketing & R&D Teams automate product price and predict new products. Part of my 101 Machine Learning Algorithms applied to 101 Business Problems Course using Machine Learning.",
            image: 'assets/project2.jpg',
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
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          child: const Text('Launch Application'),
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
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 32),
          const ExperienceItem(
            title: "Founder",
            company: "Business Science",
            duration: "Sept 2018 - Present",
          ),
          const ExperienceItem(
            title: "Director of Product Engineering & Market Development",
            company: "Axion Energy",
            duration: "Jan 2017 - Aug 2019",
          ),
          const ExperienceItem(
            title: "Manager of Sales Engineering",
            company: "Axion Power",
            duration: "Mar 2014 - Jan 2017",
          ),
          const ExperienceItem(
            title: "Manager of Product Engineering",
            company: "Axion Power",
            duration: "Nov 2011 - Mar 2014",
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text('Download My Resume'),
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
          Text(company, style: const TextStyle(color: Colors.blue)),
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
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Expanded(child: EducationItem(university: "Penn State University", degree: "Master of Business Administration (MBA)", duration: "2014-2015")),
              Expanded(child: EducationItem(university: "University of Pittsburgh", degree: "Master of Industrial Engineering", duration: "2006-2010")),
              Expanded(child: EducationItem(university: "Penn State University", degree: "Bachelor of Mechanical Engineering", duration: "2002-2006")),
            ],
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String university;
  final String degree;
  final String duration;

  const EducationItem({super.key, required this.university, required this.degree, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(university, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(degree),
          Text(duration, style: const TextStyle(color: Colors.grey)),
        ],
      ),
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
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Expanded(child: TestimonialItem(
                text: "In less than 6 months after starting my first Business Science Course with Matt, I had fully transitioned into a role as a lead data scientist and my life is better for it.",
                name: "Justin Kernon, PhD",
                title: "Lead Data Scientist, Northwestern Mutual",
              )),
              Expanded(child: TestimonialItem(
                text: "Because of all the R courses Matt Davis has provided, I landed my first Data Scientist role. Setting up shiny dashboards in AWS was extremely helpful during my interview.",
                name: "Chris Selig",
                title: "Data Scientist",
              )),
              Expanded(child: TestimonialItem(
                text: "After your entry into my life, I got a 10% pay raise and then after another 6 months of 26%, and in just another 2 months a 40% hike. I can grab a job wherever I want.",
                name: "Mohana Krishna Chittoor",
                title: "Lead Data Scientist, Money View",
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
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/profile_picture.png'),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact Jotham",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "--",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "mdancho@business-science.io",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "--",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
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
