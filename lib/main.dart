import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const avatar = 'https://picsum.photos/600';

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 80,
                ),
                const SizedBox(height: 24),
                const Card(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Paulo Rodriguez'),
                        Icon(Icons.flutter_dash),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/facebook.png',
                      height: 32,
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'images/instagram.png',
                      height: 32,
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'images/twitter.png',
                      height: 32,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
