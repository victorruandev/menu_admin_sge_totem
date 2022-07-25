import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/custom_line_dash_widget.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/footer_button_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CancelationTab extends StatelessWidget {
  const CancelationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle columnNameStyle = TextStyle(
      color: Colors.grey,
      fontSize: 25,
    );
    const TextStyle productDetailsStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: const [
              SizedBox(
                width: 108,
              ),
              Text(
                'Compra 085427',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
        const Divider(
          height: 18,
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            SizedBox(
              width: 174,
            ),
            Expanded(
              child: Text(
                'Item',
                style: columnNameStyle,
              ),
            ),
            Expanded(
              child: Text(
                'Quantidade',
                style: columnNameStyle,
              ),
            ),
            Expanded(
              child: Text(
                'Custo',
                style: columnNameStyle,
              ),
            ),
            Expanded(
              child: Text(
                'Total',
                style: columnNameStyle,
              ),
            ),
          ],
        ),
        const CustomLineDashWidget(),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 2,
          separatorBuilder: (BuildContext context, int index) =>
              const CustomLineDashWidget(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 23),
              child: Row(
                children: [
                  const SizedBox(
                    width: 174,
                  ),
                  const Expanded(
                    child: Text(
                      'Refrigerante Coca-Cola Sabor Original 1L',
                      style: productDetailsStyle,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      '           2',
                      style: productDetailsStyle,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      '        8,00',
                      style: productDetailsStyle,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      '        16,00',
                      style: productDetailsStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: InkWell(
                      onTap: () => _onAlertItemCancellation(context),
                      child: const FaIcon(FontAwesomeIcons.trashCan),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const Expanded(
          child: SizedBox(),
        ),
        FooterButtonWidget(
          buttonText: 'Cancelamento',
          onTap: () {},
        ),
      ],
    );
  }
}

_onAlertItemCancellation(context) {
  final Size size = MediaQuery.of(context).size;
  Alert(
    title: 'Cancelamento de item',
    onWillPopActive: true,
    style: AlertStyle(
      isCloseButton: false,
      titleStyle: Theme.of(context)
          .textTheme
          .headline4!
          .copyWith(fontSize: size.width * 0.025, color: Colors.black),
    ),
    context: context,
    content: SizedBox(
      width: 630,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.06),
          const Text(
            'Deseja confirmar cancelamento do item:',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: size.height * 0.05),
          const Text(
            'Arroz branco Camil Tipo 1 5Kg',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.06),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.0065),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancelar',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: const Color.fromRGBO(55, 80, 255, 1),
                          fontSize: MediaQuery.of(context).size.width * 0.016,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.0065),
                child: InkWell(
                  onTap: () {}, // diminui uma quantidade
                  child: Text(
                    'Confirmar',
                    style: Theme.of(context).textTheme.button!.copyWith(
                        color: const Color.fromRGBO(55, 80, 255, 1),
                        fontSize: MediaQuery.of(context).size.width * 0.016),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    buttons: [],
  ).show();
}
