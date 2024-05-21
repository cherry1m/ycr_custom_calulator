import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_calulator/src/widget/key_botton.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List _key = [
    [
      "AC",
      CupertinoIcons.percent,
      CupertinoIcons.divide,
      CupertinoIcons.delete_left_fill
    ],
    ["7", "8", "9", CupertinoIcons.multiply],
    ["4", "5", "6", CupertinoIcons.minus],
    ["1", "2", "3", CupertinoIcons.plus],
    [CupertinoIcons.plus_slash_minus, "0", ".", CupertinoIcons.equal]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        _resultView(),
        _keyButtonView(),
      ],
    )));
  }

  Widget _resultView() {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "0",
            style: TextStyle(
                fontSize: 80, fontWeight: FontWeight.w100, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _keyButtonView() {
    return Column(
      children: List.generate(
          _key.length,
          (y) => Row(
                children: List.generate(
                  _key[y].length,
                  (x) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: KeyButton(
                        label: _key[y][x],
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}