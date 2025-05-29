import 'package:flutter/material.dart';
import 'package:fovty_tec/view/widgets/custom_app_bar.dart';
import 'package:fovty_tec/view/widgets/custom_navbar.dart';
import 'package:fovty_tec/view/widgets/recommended_card.dart';
import 'package:fovty_tec/view/widgets/stroy_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: selectedIndex,
          onItemTapped: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  _buildgradintDrop(
                      alingment: Alignment.topRight, top: 29, right: -100),
                  _buildgradintDrop(
                      alingment: Alignment.bottomCenter, top: 450, right: 290),
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      const Divider(thickness: 1),
                      const SizedBox(height: 10),
                      StoryBar(),
                      _buildProfilCard(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Recommended for you",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFF141414)),
                            ),
                            Text(
                              "See all",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: const [
                            RecommendedCard(
                              name: 'NebuloTech',
                              role: 'Startup',
                              imagePath: 'assets/images/nebulo_Tec.png',
                            ),
                            RecommendedCard(
                              name: 'Aarav Mehta',
                              role: 'Investor',
                              imagePath: 'assets/images/araav.png',
                            ),
                          ],
                        ),
                      ),
                      _buildPostCard(context,
                          postImageUrl: 'assets/images/post_image.png',
                          profileUrl: 'assets/images/araav.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildgradintDrop(
      {required AlignmentGeometry alingment,
      required double? top,
      required double? right}) {
    return Positioned(
      top: top,
      right: right,
      child: Container(
        width: 400,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: RadialGradient(
            center: alingment,
            radius: 1.01,
            colors: [
              Color.fromARGB(200, 24, 73, 219),
              Color.fromARGB(0, 24, 73, 219),
            ],
            stops: [0.0, 1.0],
          ),
        ),
      ),
    );
  }

  Widget _buildPostCard(BuildContext context,
      {required String postImageUrl, required String profileUrl}) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withAlpha(80)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(60),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(profileUrl),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text("James Walker",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        SizedBox(width: 4),
                        Icon(Icons.verified, color: Colors.blue, size: 16),
                        SizedBox(width: 8),
                      ],
                    ),
                    Row(
                      children: [
                        Text("2 hours ago",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "A strong digital footprint helps businesses stay relevant and competitive",
            style: TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 139, 135, 135)),
          ),
          const SizedBox(height: 12),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  postImageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF4F5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFFD2D2D2),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "226",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFFD2D2D2),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/messanger2.png",
                      width: 18,
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "2333",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFFD2D2D2),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/pmessanger.jpg",
                      width: 18,
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "665",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildProfilCard() {
  return Container(
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey.withAlpha(50)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(20),
          blurRadius: 5,
          spreadRadius: 1,
          offset: const Offset(0, 4),
        )
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/cimage.png'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Brian Turner",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: Color(0xFF141414)),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.verified, color: Colors.blue, size: 16),
                    ],
                  ),
                  const SizedBox(height: 1),
                  Text(
                    "1 hour ago",
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          "Top 10 Investment Trends to Watch This Year",
          style: TextStyle(
            color: Color(0xFF141414),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Staying ahead of investment trends can give you an edge in a dynamic market. ✅📢",
          style: TextStyle(
            color: Color.fromARGB(255, 139, 135, 135),
            fontSize: 13,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFFD2D2D2),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_border, size: 20),
                  const SizedBox(width: 6),
                  const Text(
                    "10,050",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFFD2D2D2),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/messanger2.png",
                    width: 18,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    "226",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFFD2D2D2),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/pmessanger.jpg",
                    width: 18,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    "665",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            const Icon(Icons.article_outlined),
            const Icon(Icons.bookmark_border),
          ],
        ),
      ],
    ),
  );
}
