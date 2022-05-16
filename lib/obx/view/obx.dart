

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_x/getX/controller/controller.dart';

class ObxScreen extends StatelessWidget {
   ObxScreen ({Key? key}) : super(key: key);
   HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( backgroundColor: Color.fromARGB(255, 34, 53, 68),
        title: const Text("Obx"),
      ),
      body: Center(
          child: Obx(() => Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  controller.increment();
                },
                    child:  Text("+",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 30,
                        color: Color.fromARGB(255, 20, 29, 36),
                      ) ,)),
                Text("${controller.counter.value}"),
                TextButton(onPressed: (){
                  controller.decrement();
                },
                    child:  Text("-",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 30,
                        color: Color.fromARGB(255, 26, 37, 46),
                      ) ,)),
              ],
            ), )
      ),
    );
  }
}
