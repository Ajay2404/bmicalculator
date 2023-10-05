import 'package:bmicalculator/userDataClass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetUserData extends StatelessWidget {
  DataGetUser getDataCtrl = Get.put(DataGetUser());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => getDataCtrl.getuserdata.value
          ? ListView.builder(
              itemCount: getDataCtrl.userData!.email!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${getDataCtrl.userData!.email![index]}"),
                );
              },
            )
          : Center(child: CircularProgressIndicator())),
    );
  }
}

class DataGetUser extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    sendRequest();
  }

  GetConnect getConnect = GetConnect();

  UserData? userData;
  int a = 0;
  RxBool getuserdata = false.obs;

  sendRequest() async {
    var response =
        await getConnect.get("https://jsonplaceholder.typicode.com/users");
    print("ajay ${response.body}");
    userData = UserData.fromJson(response.body);
    if (userData!.email!.isNotEmpty) {
      getuserdata(true);
    }
  }
}
