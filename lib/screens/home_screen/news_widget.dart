import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "News",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          DefaultTabController(
            length: 4,
            child: Column(
              children: [
                const TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.orange,
                  tabs: [
                    Tab(text: "Highlight"),
                    Tab(text: "Politics"),
                    Tab(text: "Entertainment"),
                    Tab(text: "Music"),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: TabBarView(
                    children: [
                      _buildNewsList(),
                      const Center(child: Text("Politics News")),
                      const Center(child: Text("Entertainment News")),
                      const Center(child: Text("Music News")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildNewsList() {
    return ListView(
      children: const [
        ListTile(
          title: Text("Breaking: Local Elections"),
          subtitle: Text(
            "Results and analysis - 48 seconds ago",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        ListTile(
          title: Text("Tech Innovations"),
          subtitle: Text(
            "Latest advancements - 2 hours ago",
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ],
    );
  }
}
