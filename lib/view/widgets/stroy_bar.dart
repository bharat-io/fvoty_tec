import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  final List<Map<String, dynamic>> storyData = [
    {"name": "johan", "imageUrl": "assets/images/s_image1.png"},
    {"name": "johan", "imageUrl": "assets/images/s_image2.png"},
    {"name": "johan", "imageUrl": "assets/images/s_image3.png"},
    {"name": "johan", "imageUrl": "assets/images/s_image4.png"},
    {"name": "johan", "imageUrl": "assets/images/s_image1.png"},
    {"name": "johan", "imageUrl": "assets/images/s_image3.png"},
  ];

  final List<Color> gradientColors = const [
    Color(0xFFB7D5EE),
    Color.fromARGB(120, 134, 33, 201),
    Color(0xFF70A9F0),
    Color(0xFF0095EE),
    Color.fromARGB(255, 10, 32, 99),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: storyData.length,
        itemBuilder: (context, index) {
          final story = storyData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.5),
            child: Column(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: gradientColors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(2),
                    child: ClipOval(
                      child: Image.asset(
                        story['imageUrl'],
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          );
        },
      ),
    );
  }
}
