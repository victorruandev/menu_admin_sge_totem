import 'package:flutter/material.dart';

class CloseCashierTab extends StatelessWidget {
  const CloseCashierTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.,
      children: [
        Row(
          children: const [
            Text('Caixa'),
            Text('004'),
          ],
        ),
        Row(
          children: [
            const Text('Conta'),
            DropdownButton<String>(
              // focusColor: Colors.blue,
              dropdownColor: Colors.blue,
              value: null,
              items: null,
              onChanged: null,
            ),
          ],
        ),
        Row(
          children: const [
            Text('Data de fechamento'),
            Text('09/10/2022'),
          ],
        ),
      ],
    );
  }
}
