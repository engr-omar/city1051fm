import 'package:flutter/material.dart';

class ShowsWidgets extends StatelessWidget {
  const ShowsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/host1.png"),
          ),
          title: Text("City Café - 11:00 AM - 02:00 PM"),
          subtitle: Text(
            "Hosted by Ini",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/host2.png"),
          ),
          title: Text("The Rundown - 02:00 PM - 05:00 PM"),
          subtitle: Text(
            "Hosted by APD",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/host3.png"),
          ),
          title: Text("Super Drive Time - 05:00 PM - 09:00 PM"),
          subtitle: Text(
            "Hosted by Tara & Kcee",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/host4.png"),
          ),
          title: Text("Lift Off - 09:00 PM - 12:00 AM"),
          subtitle: Text(
            "Hosted by Twix Da Jims",
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ],
    );
  }
}
