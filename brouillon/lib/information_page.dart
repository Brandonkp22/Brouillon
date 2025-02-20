import 'package:brouillon/information_detail.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.cyan[50], // Fond clair pour un look frais
        appBar: AppBar(
          backgroundColor: Colors.blue[300], // Bleu clair pour l'AppBar
          title: const Text(
            'Informations',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.local_cafe)),
              Tab(icon: Icon(Icons.star)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue[100], // Conteneur bleu clair
              border: Border.all(color: Colors.blueAccent, width: 2),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.blue[900]), // Icône info en bleu foncé
                    const SizedBox(width: 10),
                    const Text(
                      'Actualités',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(color: Colors.blueAccent, thickness: 1),
                Expanded(
                  child: ListView.separated(
                    itemCount: 20,
                    separatorBuilder: (context, index) => const Divider(color: Colors.blueGrey),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InformationDetailPage(),
                            ),
                          );
                        },
                        leading: Icon(Icons.person, color: Colors.blue[700]),
                        title: const Text(
                          'Titre de l’info',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          'Description rapide de l’actualité en quelques mots...',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
