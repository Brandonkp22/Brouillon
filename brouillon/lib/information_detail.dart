import 'package:brouillon/option_page.dart';
import 'package:flutter/material.dart';

class InformationDetailPage extends StatefulWidget {
  const InformationDetailPage({super.key});

  @override
  State<InformationDetailPage> createState() => _InformationDetailPageState();
}

class _InformationDetailPageState extends State<InformationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50], // Fond vert clair
      appBar: AppBar(
        backgroundColor: Colors.green[400], // AppBar en vert
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OptionPage()),
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Détail Information',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green[200], // Placeholder vert clair
              ),
              child: const Icon(Icons.image, size: 80, color: Colors.white),
            ),
            const SizedBox(height: 15),
            const Text(
              "Titre de l'Information",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.white,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child:  Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                  "Voluptate, quia? Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                  "Voluptate, quia? Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                  "Voluptate, quia? Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                  "Voluptate, quia? Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                  style: TextStyle(fontSize: 16, color: Colors.green[900]),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
