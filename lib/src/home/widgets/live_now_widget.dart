import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveNowWidget extends StatelessWidget {
  const LiveNowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // 👈 white background
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left: Text Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Live Now",
                  style: GoogleFonts.lexend(
                    color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Breakfast In The City",
                  style: GoogleFonts.lexend(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Tune in for the latest news,\ninterviews, and music. 6am - 11am",
                  style: GoogleFonts.lexend(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          // Right: Station Logo
          const SizedBox(width: 16),
          const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage("assets/images/logo.png"),
          ),
        ],
      ),
    );
  }
}
