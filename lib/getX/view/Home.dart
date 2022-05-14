import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import '../controller/controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
          child: GetX<HomeController>(
            init: HomeController(),
            builder: (controller) => Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  controller.increment();
                },
                    child:  Text("+",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 30,
                        color: Colors.blue,
                      ) ,)),
                Text("${controller.counter.value}"),
                TextButton(onPressed: (){
                  controller.decrement();
                },
                    child:  Text("-",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 30,
                        color: Colors.blue,
                      ) ,)),
              ],
            ), )
      ),
    );
  }
}
