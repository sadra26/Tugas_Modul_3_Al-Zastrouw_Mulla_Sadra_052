import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: const Color.fromARGB(255, 114, 66, 138), useMaterial3: true),
      home: const HalamanProfil(),
    );
  }
}

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Layout'),
        backgroundColor: const Color.fromARGB(255, 71, 54, 106),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pemrograman Mobile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Pertemuan 3 - Container, Row & Column',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 63, 181, 73),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Halo! Ini kartu profil saya.',
                style: TextStyle(color: Color.fromARGB(255, 68, 49, 83), fontSize: 18),
              ),
            ),
            const SizedBox(height: 16),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 36,
                      backgroundColor: Color.fromARGB(255, 58, 197, 176),
                      child: Text(
                        'NBI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Noval Bagas Irianto',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: 6),
                              Icon(
                                Icons.verified,
                                color: Color.fromARGB(255, 42, 42, 190),
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const _InfoBaris(
                            icon: Icons.badge,
                            teks: 'NIM 241080200024', 
                          ),
                          const _InfoBaris(
                            icon: Icons.school,
                            teks: 'Prodi Informatika',
                          ),
                          const _InfoBaris(
                            icon: Icons.sports_esports,
                            teks: 'Hobi: Olahraga, Bliard' 
                          ),
                          const _InfoBaris(
                            icon: Icons.email,
                            teks: 'novalganteng@gmail.com', 
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoBaris extends StatelessWidget {
  final IconData icon;
  final String teks;

  const _InfoBaris({required this.icon, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: const Color.fromARGB(255, 2, 86, 27)),
          const SizedBox(width: 8),
          Expanded(child: Text(teks)),
        ],
      ),
    );
  }
}
