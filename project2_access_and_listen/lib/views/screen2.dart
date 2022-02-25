import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Data/mydataclass.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: SafeArea(
        child: Center(
          /// This is a Consumer
          /// this is how it is written
          /// its job is to consume data from dataClass
          child: Consumer<DataClass>(builder: (context, dataClass, _) {
            return SizedBox(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                      "This is a consumer widget in screen 2.\n"
                      "Here we will only use the increment function and listen to data",
                      textAlign: TextAlign.center),
                  Text(
                    "Number = " + dataClass.number.toString(),
                    textScaleFactor: 1.3,
                  ),
                  TextButton(
                      onPressed: () {
                        dataClass.increaseNumber();
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: const Text("Increase")),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
