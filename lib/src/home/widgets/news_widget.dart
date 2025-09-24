import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsSection extends StatelessWidget {
  final TabController controller;
  const NewsSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "News",
            style: GoogleFonts.lexend(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TabBar(
          controller: controller,
          tabs: const [
            Tab(text: "Highlight"),
            Tab(text: "Politics"),
            Tab(text: "Entertainment"),
            Tab(text: "Music"),
          ],
          isScrollable: true,
          labelColor: Colors.black,
          indicatorColor: Colors.orange,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),

        SizedBox(
          height: 200,
          child: TabBarView(
            controller: controller,
            children: [
              _buildNewsList(),
              _buildNewsList(),
              _buildNewsList(),
              _buildNewsList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNewsList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _newsCard("Breaking: Local Elections", "48 seconds ago"),
        _newsCard("Tech Innovations", "2 hours ago"),
        _newsCard("Community Update", "5 hours ago"),
      ],
    );
  }

  Widget _newsCard(String title, String time) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.article, size: 50),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(time, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
