import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("GETx Tutorial"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  debugPrint("Snackbar Button Clicked");
                  Get.snackbar(
                    "This is Title",
                    "This is message",
                  );
                },
                child: const Text("Show Snackbar"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog();
                },
                child: const Text("Show Dialog"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    const Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.no_accounts),
                          title: Text("This is Title"),
                        ),
                        ListTile(
                          leading: Icon(Icons.abc_sharp),
                          title: Text("This is Title2"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Show Bottom Sheet"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: const Text("Go to Home"))
            ],
          ),
        ),
      ),
    );
  }
}
