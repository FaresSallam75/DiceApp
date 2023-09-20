import 'package:dice_app/component/getnumbers.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  generateRandomNumber(1);
                  setState(() {});
                  print('I am Left Image : $leftImageNumber');
                },
                child: Image.asset('images/dice$leftImageNumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  child: Image.asset('images/dice$rightImageNumber.png'),
                  onPressed: () {
                    generateRandomNumber(2);
                    setState(() {});
                    print('I am Right Image : $rightImageNumber');
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
