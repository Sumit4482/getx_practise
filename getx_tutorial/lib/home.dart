import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("H O M E - S C R E E N"),
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go to Home !"))
        ],
      ),
    );
  }
}
