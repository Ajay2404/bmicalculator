import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementButton1 extends StatelessWidget {
  final IncrementController controller = Get.put(IncrementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<IncrementController>(
              builder: (controller) => Text(
                'Count: ${controller.count}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
              const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => controller.increment(),
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}

class IncrementController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
}
