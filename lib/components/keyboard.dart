import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  final void Function(String) cb;
  const KeyBoard({super.key, required this.cb});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.big(text: 'AC', cb: cb, color: Button.DARK),
              Button(text: '%', cb: cb, color: Button.DARK),
              Button.operation(text: '/', cb: cb),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(text: '7', cb: cb),
              Button(text: '8', cb: cb),
              Button(text: '9', cb: cb),
              Button.operation(text: 'X', cb: cb),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(text: '4', cb: cb),
              Button(text: '5', cb: cb),
              Button(text: '6', cb: cb),
              Button.operation(text: '-', cb: cb),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(text: '1', cb: cb),
              Button(text: '2', cb: cb),
              Button(text: '3', cb: cb),
              Button.operation(text: '+', cb: cb),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button.big(text: '0', cb: cb),
              Button(text: '.', cb: cb),
              Button.operation(text: '=', cb: cb),
            ],
          ),
        ],
      ),
    );
  }
}
