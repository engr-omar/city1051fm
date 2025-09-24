import 'package:city1051fm/src/home/widgets/city_shows_widget.dart';
import 'package:city1051fm/src/home/widgets/custom_bottom_nav.dart';
import 'package:city1051fm/src/home/widgets/live_now_widget.dart';
import 'package:city1051fm/src/home/widgets/news_widget.dart';
import 'package:city1051fm/src/home/widgets/play_button_wigdet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _showTabController;
  late TabController _newsTabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _showTabController = TabController(length: 7, vsync: this);
    _newsTabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _showTabController.dispose();
    _newsTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E9E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF7E17),
        title: Center(
          child: Text(
            "HOME",
            style: GoogleFonts.lexend(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.wb_sunny_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LiveNowWidget(),
            const PlayButtonWidget(),
            CityShowsSection(controller: _showTabController),
            NewsSection(controller: _newsTabController),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
