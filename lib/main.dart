// ignore_for_file: unused_label
import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'events.dart';
import 'book.dart';
import 'des.dart';

void main() {
  runApp(EnchantixApp());
}

class EnchantixApp extends StatelessWidget {
  const EnchantixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enchantix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/events': (context) => EventsPage(),
        '/des': (context) => EventDetails(),
        '/book': (context) => BookPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enchantix'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/p2.jpg'), // Make sure to add the correct path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Enchantix!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Adjust the text color if needed
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Light blue color for the button
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Light blue color for the button
                ),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
