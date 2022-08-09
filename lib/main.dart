import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_state_manager/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'state management',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("State management"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<MyController>(
                  init: MyController(),
                  builder: (controller) {
                    return Text("The value is ${controller.count}");
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.find<MyController>().increment();
                    },
                    child: Text("Increment")),
              ],
            ),
          ),
        ));
  }
}
