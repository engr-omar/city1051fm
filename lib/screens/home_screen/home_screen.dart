import 'package:city105fm/screens/home_screen/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:city105fm/screens/home_screen/shows_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF232530),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Live Now",
                    style: TextStyle(color: Colors.orange, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Breakfast In The City",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Tune in for the latest news, interviews, and music. 6am - 11am",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 12),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // Shows Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "City Shows",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  SizedBox(height: 300, child: ShowsWidgets()),
                ],
              ),
            ),

            // News Section
            const NewsWidget(),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF232530),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white70,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: "Shows"),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Promotions",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Staff"),
        ],
      ),
    );
  }
}
