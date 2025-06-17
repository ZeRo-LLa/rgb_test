import 'package:flutter/material.dart';
import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController();

  void _changeColor() {
    setState(() {
      controller.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    final String hexCode =
        '#${controller.currentColor.value.toRadixString(16).padLeft(8, '0').toUpperCase().substring(2)}';

    return GestureDetector(
      onTap: _changeColor,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: controller.currentColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello there",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              hexCode,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Color history:",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  controller.colorHistory.map((color) {
                    return Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black26),
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
