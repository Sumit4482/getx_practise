import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_builder_api/controller.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final MyHomePageController controller = Get.put(MyHomePageController());
  MyHomePage({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have Incremented counter value to :',
            ),
            GetBuilder(
              init: MyHomePageController(),
              builder: (val) => Text("${val.count}"),
            ),
            GetBuilder<MyHomePageController>(
              builder: (value) => Text(
                '${value.count}',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
