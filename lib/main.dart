import 'package:bmicalculator/incrementWthoutObs.dart';
import 'package:bmicalculator/postmethod.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: PostMethod()));
}

class IncrementButton extends StatelessWidget {
  final Increment controller = Get.put(Increment());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(
                  'Count: ${controller.count.value}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text('Increment'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return IncrementButton1();
                    },
                  ));
                },
                child: const Text("Without Obs"))
          ],
        ),
      ),
    );
  }
}

class Increment extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count.value++;
  }
}
