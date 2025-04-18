import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/e29a56f690e54c1927efa524689e24e9.jpeg',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Kaya Müller',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Fotograf',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              'Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. '
              'Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen '
              'Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und '
              'Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige '
              'Bilder zu schaffen.\n\n'
              'Ich glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen '
              'Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative '
              'Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene '
              'Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach '
              'neuen Perspektiven und Herausforderungen.\n\n'
              'Mein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und '
              'zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein '
              'Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
