import 'package:api_getx/controller/ctrl.user.dart';
import 'package:api_getx/model/model.user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put<UserController>(UserController());
    List<UserModel> userList = controller.userList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Data"),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image.network("${userList[index].avatar}"),
                        ),
                        title: Row(
                          children: [
                            Text('${userList[index].firstName}'),
                            Text(' ${userList[index].lastName}'),
                          ],
                        ),
                        subtitle: Text('${userList[index].email}'),
                      ),
                    ),
                  );
                }),
      ),
    );
  }
}
