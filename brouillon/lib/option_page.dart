import 'package:brouillon/home_page.dart';
import 'package:brouillon/information_page.dart';
import 'package:flutter/material.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({super.key});

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  List<Map> options = [
    {'icon': Icons.home, 'title': 'Home', 'screen': HomePage()},
    {'icon': Icons.search, 'title': 'Search', 'screen': HomePage()},
    {'icon': Icons.star, 'title': 'Favorites', 'screen': HomePage()},
    {'icon': Icons.settings, 'title': 'Settings', 'screen': HomePage()},
    {'icon': Icons.local_cafe, 'title': 'Cafe', 'screen': InformationPage()},
    {'icon': Icons.notifications, 'title': 'Notifications', 'screen': HomePage()},
    {'icon': Icons.person, 'title': 'Profile', 'screen': HomePage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Fond clair pour plus de douceur
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange[100], // Conteneur coloré en orange doux
                border: Border.all(color: Colors.orange, width: 2),
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.orangeAccent,
                  thickness: 1,
                ),
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => options[index]['screen'] as Widget,
                        ),
                      );
                    },
                    leading: Icon(
                      options[index]['icon'],
                      size: 30,
                      color: Colors.green[800], // Icônes en vert foncé
                    ),
                    title: Text(
                      options[index]['title'],
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
