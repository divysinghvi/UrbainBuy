import 'package:flutter/material.dart';

class Gri extends StatelessWidget {
  const Gri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CategoryItem(
              imageUrl: "lib/assets/cloths.jpg",
              title: 'Cloths',
            ),
            CategoryItem(
              imageUrl: "lib/assets/shoecat.jpg",
              title: 'Shoes',
            ),
            CategoryItem(
              imageUrl: "lib/assets/bagscat.jpg",
              title: 'Bags',
            ),
            CategoryItem(
              imageUrl: "lib/assets/watchcat.jpg",
              title: 'Watch',
            ),
            // Additional categories can be added here...
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: () {
          // Handle category item tap
          print('Tapped on $title');
          // Navigate to the respective category page or perform any action here
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(40),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
                radius: 30,
              ),
            ),
            const SizedBox(height: 8), // Add space between image and text
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
