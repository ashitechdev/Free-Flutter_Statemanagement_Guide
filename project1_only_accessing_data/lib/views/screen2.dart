import 'package:flutter/material.dart';
import 'package:project1_only_accessing_data/Data/mydataclass.dart';
import 'package:provider/provider.dart';

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
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("This is a consumer widget in screen 2."),
                    Text(dataClass.someData),
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
