import 'dart:convert';

import 'package:api_getx/model/model.user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  var userList = <UserModel>[].obs;
  var isLoading = true.obs;

  @override
  onInit() {
    super.onInit();
    getUsers();
  }

  getUsers() async {
    const String userUrl = "https://reqres.in/api/users?page=2";
    final response = await http.get(Uri.parse(userUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      userList.value = result.map((e) => UserModel.fromJson(e)).toList();
      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Occured while fetching data',
          'Server responded :${response.statusCode}: ${response.reasonPhrase.toString()}');
    }
  }
}
