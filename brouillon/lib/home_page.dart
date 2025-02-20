import 'package:brouillon/option_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> options = [
    {'icon': Icons.home},
    {'icon': Icons.settings},
    {'icon': Icons.search},
    {'icon': Icons.star},
    {'icon': Icons.favorite},
    {'icon': Icons.settings},
    {'icon': Icons.star},
    {'icon': Icons.notifications},
    {'icon': Icons.chat},
    {'icon': Icons.shopping_cart},
    {'icon': Icons.person},
    {'icon': Icons.help},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.blueGrey[50], // Fond clair pour plus de lisibilité
      appBar: AppBar(
        backgroundColor: Colors.orange, // Couleur plus dynamique
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OptionPage()),
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.teal.withOpacity(0.2), // Fond coloré doux
                      border: Border.all(color: Colors.teal, width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        options[index]['icon'],
                        size: 30,
                        color: Colors.teal[800], // Icône plus visible
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
