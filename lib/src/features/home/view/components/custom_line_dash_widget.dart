import 'package:flutter/material.dart';

class CustomLineDashWidget extends StatelessWidget {
  const CustomLineDashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        2500 ~/ 12,
        (index) => Expanded(
          child: Container(
            color: index % 2 == 0 ? Colors.transparent : Colors.grey,
            height: 1,
          ),
        ),
      ),
    );
  }
}
