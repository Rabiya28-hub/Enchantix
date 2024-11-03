import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/e5.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              const Text(
                'Birthday Party ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'This is a great event you don\'t want to miss!',
                style: TextStyle(fontSize: 16),
              ),
                  const SizedBox(height: 8),
              const Text(
                'Its an important day in our life.',
                style: TextStyle(fontSize: 16),
              ),
                  const SizedBox(height: 8),
              const Text(
                'Enjoy this day with your family and Friends ❤️❤️',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                '\Rs.50,000',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/book');
                },
                child: const Text('Book Now'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
