// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class BmiCalculator extends StatelessWidget {
//   final BmiController controller = Get.put(BmiController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BMI Calculator'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: Card(
//                 elevation: 4.0,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(height: 16.0),
//                       const Text(
//                         'Weight (kg)',
//                         style: TextStyle(fontSize: 20.0),
//                       ),
//                       const SizedBox(height: 8.0),
//                       TextField(
//                         keyboardType: TextInputType.number,
//                         onChanged: (value) {
//                           controller.weight.value = double.tryParse(value)!;
//                         },
//                         decoration: const InputDecoration(
//                           hintText: 'Enter your weight',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                       const SizedBox(height: 16.0),
//                       const Text(
//                         'Height (cm)',
//                         style: TextStyle(fontSize: 20.0),
//                       ),
//                       const SizedBox(height: 8.0),
//                       TextField(
//                         keyboardType: TextInputType.number,
//                         onChanged: (value) {
//                           controller.height.value = double.tryParse(value)!;
//                         },
//                         decoration: const InputDecoration(
//                           hintText: 'Enter your height',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                       const SizedBox(height: 24.0),
//                       ElevatedButton(
//                         onPressed: () {
//                           controller.calculateBMI();
//                           Get.snackbar(
//                             snackPosition: SnackPosition.BOTTOM,
//                             "BMI",
//                             "Result:",
//                             titleText: Obx(
//                               () => SizedBox(
//                                 height: 100.0,
//                                 child: Center(
//                                   child: Text(
//                                     'BMI Result: ${controller.bmiResult.value.toStringAsFixed(2)}',
//                                     style: const TextStyle(fontSize: 24.0),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         child: const Text('Calculate'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class BmiController extends GetxController {
//   RxString selectedGender = ''.obs;
//   RxDouble weight = 0.0.obs;
//   RxDouble height = 0.0.obs;
//   RxDouble bmiResult = 0.0.obs;
//   var name = "".obs;
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//
//     name.value = "ajay";
//     print("$name");
//   }
//
//   @override
//   void onReady() {
//     // TODO: implement onReady
//     super.onReady();
//     name.value = "raj";
//     print("$name");
//   }
//
//   void calculateBMI() {
//     double heightSquare = height.value / 100;
//     double bmi = weight.value / (heightSquare * heightSquare);
//     bmiResult.value = bmi;
//   }
// }
