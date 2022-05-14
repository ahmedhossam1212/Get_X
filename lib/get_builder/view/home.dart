import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';


class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          init: CounterController(),
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
             Text("${controller.counter}"),
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
