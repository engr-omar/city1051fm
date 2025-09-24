import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: const Color(0xFFFF7E17),
      selectedLabelStyle: GoogleFonts.lexend(
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.lexend(
        fontSize: 11,
        fontWeight: FontWeight.normal,
      ),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.radio), label: "Shows"),
        BottomNavigationBarItem(
          icon: Icon(Icons.campaign),
          label: "Promotions",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: "CMA"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "OAPs"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
