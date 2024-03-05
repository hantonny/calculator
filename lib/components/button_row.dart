import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(
          <Widget>[],
          (list, b) {
            list.isEmpty
                ? list.add(b)
                : list.addAll(
                    [
                      const SizedBox(
                        width: 1,
                      ),
                      b
                    ],
                  );
            return list;
          },
        ),
      ),
    );
  }
}
