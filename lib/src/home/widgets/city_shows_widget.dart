import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityShowsSection extends StatelessWidget {
  final TabController controller;
  const CityShowsSection({super.key, required this.controller});

  // Weekly shows data
  static final Map<String, List<Map<String, String>>> weeklyShows = {
    "Monday": [
      {
        "title": "BREAKFAST IN THE CITY",
        "time": "6:00 AM - 11:00 AM",
        "by": "Onome & Ini",
      },
      {
        "title": "SPORT CITY",
        "time": "8:00 AM - 8:30 AM",
        "by": "Damiloju & Mickeal",
      },
      {"title": "CITY CAFE", "time": "11:00 AM - 2:00 PM", "by": "Varoni"},
      {"title": "THE RUNDOWN", "time": "2:00 PM - 5:00 PM", "by": "Ttarra"},
      {"title": "SUPER DRIVE TIME", "time": "5:00 PM - 9:00 PM", "by": "Khace"},
      {"title": "GIRLISH", "time": "7:00 PM - 8:00 PM", "by": "Anyone"},
      {"title": "LIFT OFF", "time": "9:00 PM - 12:00 PM", "by": "Anyoap"},
    ],
    "Tuesday": [
      {
        "title": "BREAKFAST IN THE CITY",
        "time": "6:00 AM - 11:00 AM",
        "by": "Onome & Ini",
      },
      {
        "title": "SPORT CITY",
        "time": "8:00 AM - 8:30 AM",
        "by": "Damiloju & Mickeal",
      },
      {"title": "CITY CAFE", "time": "11:00 AM - 2:00 PM", "by": "Varoni"},
      {"title": "THE RUNDOWN", "time": "2:00 PM - 5:00 PM", "by": "Ttarra"},
      {"title": "SUPER DRIVE TIME", "time": "5:00 PM - 9:00 PM", "by": "Khace"},
      {"title": "GIRLISH", "time": "7:00 PM - 8:00 PM", "by": "Anyone"},
      {"title": "LIFT OFF", "time": "9:00 PM - 12:00 PM", "by": "Anyoap"},
    ],
    "Wednesday": [
      {
        "title": "BREAKFAST IN THE CITY",
        "time": "6:00 AM - 11:00 AM",
        "by": "Onome & Ini",
      },
      {
        "title": "SPORT CITY",
        "time": "8:00 AM - 8:30 AM",
        "by": "Damiloju & Mickeal",
      },
      {"title": "CITY CAFE", "time": "11:00 AM - 2:00 PM", "by": "Varoni"},
      {"title": "THE RUNDOWN", "time": "2:00 PM - 5:00 PM", "by": "Ttarra"},
      {"title": "SUPER DRIVE TIME", "time": "5:00 PM - 9:00 PM", "by": "Khace"},
      {"title": "GIRLISH", "time": "7:00 PM - 8:00 PM", "by": "Anyone"},
      {"title": "LIFT OFF", "time": "9:00 PM - 12:00 PM", "by": "Anyoap"},
    ],
    "Thursday": [
      {
        "title": "BREAKFAST IN THE CITY",
        "time": "6:00 AM - 11:00 AM",
        "by": "Onome & Ini",
      },
      {
        "title": "SPORT CITY",
        "time": "8:00 AM - 8:30 AM",
        "by": "Damiloju & Mickeal",
      },
      {"title": "CITY CAFE", "time": "11:00 AM - 2:00 PM", "by": "Varoni"},
      {"title": "THE RUNDOWN", "time": "2:00 PM - 5:00 PM", "by": "Ttarra"},
      {"title": "SUPER DRIVE TIME", "time": "5:00 PM - 9:00 PM", "by": "Khace"},
      {"title": "GIRLISH", "time": "7:00 PM - 8:00 PM", "by": "Anyone"},
      {"title": "LIFT OFF", "time": "9:00 PM - 12:00 PM", "by": "Anyoap"},
    ],
    "Friday": [
      {
        "title": "BREAKFAST IN THE CITY",
        "time": "6:00 AM - 11:00 AM",
        "by": "Onome & Ini",
      },
      {
        "title": "SPORT CITY",
        "time": "8:00 AM - 8:30 AM",
        "by": "Damiloju & Mickeal",
      },
      {"title": "CITY CAFE", "time": "11:00 AM - 2:00 PM", "by": "Varoni"},
      {"title": "THE RUNDOWN", "time": "2:00 PM - 5:00 PM", "by": "Ttarra"},
      {"title": "SUPER DRIVE TIME", "time": "5:00 PM - 9:00 PM", "by": "Khace"},
      {"title": "THE BAR", "time": "5:00 PM - 9:00 PM", "by": "Khace"},
      {"title": "GIRLISH", "time": "7:00 PM - 8:00 PM", "by": "Anyone"},
      {"title": "LIFT OFF", "time": "9:00 PM - 12:00 PM", "by": "Anyoap"},
    ],
    "Saturday": [
      {"title": "KILONSHELE", "time": "10:00 AM - 11:00 AM", "by": "Olajumoke"},
      {
        "title": "SPORT CITY XTRA",
        "time": "2:00 PM - 6:00 PM",
        "by": "Damiloju",
      },
      {"title": "CITY LOUNGE", "time": "6:00 PM - 10:00 PM", "by": "Onome"},
    ],
    "Sunday": [
      {
        "title": "PRAISE IN THE CITY",
        "time": "06:00 AM - 12:00 PM",
        "by": "Tefeeh",
      },
      {"title": "HOUSE CITY", "time": "12:00 PM - 4:00 PM", "by": "Mickel"},
      {"title": "SOUL CITY", "time": "05:00 PM - 8:00 PM", "by": "Mickel"},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "City Shows",
            style: GoogleFonts.lexend(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TabBar(
          controller: controller,
          isScrollable: true,
          labelColor: const Color(0xFFFF7E17),
          unselectedLabelColor: Colors.black,
          indicatorColor: const Color(0xFFFF7E17),
          labelStyle: GoogleFonts.lexend(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: GoogleFonts.lexend(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          tabs: weeklyShows.keys.map((day) => Tab(text: day)).toList(),
        ),
        SizedBox(
          height: 300,
          child: TabBarView(
            controller: controller,
            children: weeklyShows.keys.map((day) {
              return _buildShowList(weeklyShows[day]!);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildShowList(List<Map<String, String>> shows) {
    return ListView.builder(
      itemCount: shows.length,
      itemBuilder: (context, index) {
        final show = shows[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          trailing: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/host1.png"),
          ),
          title: Text(
            "${show['title']} - ${show['time']}",
            style: GoogleFonts.lexend(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Hosted by ${show['by']}",
            style: GoogleFonts.lexend(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF7E17),
            ),
          ),
        );
      },
    );
  }
}
