import 'package:flutter/material.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/footer_button_widget.dart';

class CloseCashierTab extends StatelessWidget {
  const CloseCashierTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle =
        TextStyle(fontSize: 25, fontWeight: FontWeight.w500);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 82,
        ),
        Row(
          children: const [
            SizedBox(width: 360),
            Text(
              'Caixa',
              style: titleStyle,
            ),
            SizedBox(width: 335),
            SizedBox(
              width: 362,
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  hoverColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                  ),
                  label: Text(
                    '004',
                    style: titleStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(height: 75),
        // Row(
        //   children: [
        //     const Text(
        //       'Conta',
        //       style: titleStyle,
        //     ),
        //     const SizedBox(width: 369),
        //     DropdownButton<String>(
        //       // isExpanded: true,
        //       // focusColor: Colors.blue,
        //       dropdownColor: Colors.blue,
        //       value: '',
        //       items: [],
        //       onChanged: null,
        //       // borderRadius: BorderRadius.circular(20),
        //     ),
        //   ],
        // ),
        const SizedBox(height: 75),
        Row(
          children: const [
            SizedBox(width: 360),
            Text(
              'Data de fechamento',
              style: titleStyle,
            ),
            SizedBox(width: 165),
            SizedBox(
              width: 362,
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  hoverColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 100,
                    ),
                  ),
                  label: Text(
                    '09/10/2022',
                    style: titleStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 75),
        Row(
          children: [
            const SizedBox(width: 360),
            const Text(
              'Formas de Pagamento',
              style: titleStyle,
            ),
            const SizedBox(width: 140),
            criaTabela(),
          ],
        ),
        Flexible(flex: 2, child: Container()),
        FooterButtonWidget(
          buttonText: 'Confirmar',
          onTap: () {},
        )
      ],
    );
  }

  Widget criaTabela() {
    const BorderSide customBorderSize = BorderSide(
      color: Colors.black,
      style: BorderStyle.solid,
      width: 1.0,
    );
    return Table(
      defaultColumnWidth: const FixedColumnWidth(200),
      border: const TableBorder(
        horizontalInside: customBorderSize,
        verticalInside: customBorderSize,
        top: customBorderSize,
        left: customBorderSize,
        bottom: customBorderSize,
        right: customBorderSize,
      ),
      children: [
        _criarLinhaTable("Crédito| R\$ 230,55"),
        _criarLinhaTable("Débito| R\$ 230,55"),
        _criarLinhaTable("Pix| R\$ 230,55"),
        // _criarLinhaTable("17, Flament"),
      ],
    );
  }

  _criarLinhaTable(String formsPayment) { // refatorar isto aq!
    // formas de pagamento, valores
    return TableRow(
      children: formsPayment.split('|').map((name) {
        // lembrar que estou separando por |s
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(9),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}
