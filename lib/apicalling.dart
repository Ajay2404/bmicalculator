// import 'package:bmicalculator/myclass.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Getdata extends StatelessWidget {
//   DataGet getDataCtrl = Get.put(DataGet());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() => getDataCtrl.getdata.value
//           ? ListView.builder(
//               itemCount: getDataCtrl.myClassData!.products!.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(
//                       "${getDataCtrl.myClassData!.products![index].title}"),
//                 );
//               },
//             )
//           : Center(child: CircularProgressIndicator())),
//     );
//   }
// }
//
// class DataGet extends GetxController {
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     sendRequest();
//   }
//
//   GetConnect getConnect = GetConnect();
//
//   MyClassData? myClassData;
//   int a = 0;
//   RxBool getdata = false.obs;
//
//   sendRequest() async {
//     var response = await getConnect.get("https://dummyjson.com/products");
//     print("ajay ${response.body}");
//     myClassData = MyClassData.fromJson(response.body);
//     if (myClassData!.products!.isNotEmpty) {
//       getdata(true);
//     }
//   }
// }
