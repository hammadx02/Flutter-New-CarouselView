import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'New Carousel View',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 240,
            child: CarouselView(
              itemExtent: MediaQuery.of(context).size.width - 32,
              children: List.generate(10, (int index) {
                return Container(
                  color: Colors.grey,
                  child: Image.network(
                    'https://picsum.photos/400?random=$index',
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
