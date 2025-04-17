import 'package:flutter/material.dart';
import 'package:simulator_test/about%20me_screen.dart';
import 'gallery_data.dart';
import 'detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body;

    if (currentIndex == 0) {
      body = buildGalleryView();
    } else {
      body = AboutMeScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex == 0 ? 'MyGallery' : 'Über mich'),
        backgroundColor: const Color.fromARGB(255, 116, 108, 221),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Bilder'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Über mich'),
        ],
      ),
    );
  }

  Widget buildGalleryView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        children: List.generate(
          galleryData.length,
          (index) => buildGalleryCard(context, index),
        ),
      ),
    );
  }

  Widget buildGalleryCard(BuildContext context, int index) {
    final item = galleryData[index];

    return GestureDetector(
      onTap: () => navigateToDetailScreen(context, item),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.asset(
                  item.imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.imageTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToDetailScreen(BuildContext context, var item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return DetailScreen(item: item);
        },
      ),
    );
  }
}
