// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button(
      {super.key,
      required this.text,
      this.big = false,
      this.color = DEFAULT,
      required this.cb});

  const Button.big(
      {super.key,
      required this.text,
      this.big = true,
      this.color = DEFAULT,
      required this.cb});

  const Button.operation(
      {super.key,
      required this.text,
      this.big = false,
      this.color = OPERATION,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(500),
            backgroundColor: MaterialStateProperty.all(
              color,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
          ),
          onPressed: () => cb(text),
        ),
      ),
    );
  }
}
