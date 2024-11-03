import 'package:flutter/material.dart';
import 'package:enchantix/des.dart'; // Import the EventDetails page

class EventsPage extends StatelessWidget {
  final List<Map<String, String>> events = [
    {'name': 'Birthday Party 🎂', 'image': 'assets/e1.jpg'},
    {'name': 'Marriage🥂', 'image': 'assets/e2.jpg'},
    {'name': 'Baby Shower 🍼', 'image': 'assets/e4.png'},
    {'name': 'Naming Ceremony 👶', 'image': 'assets/e3.jpg'},
    // Add more events if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: events.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetails(),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      events[index]['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    events[index]['name']!,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
