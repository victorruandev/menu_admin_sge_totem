import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/custom_line_dash.dart';

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
    Size size = MediaQuery.of(context).size;
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
        // const Divider(
        //   height: 18,
        // ),
        const CustomLineDash(),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 2,
          separatorBuilder: (BuildContext context, int index) =>
              const CustomLineDash(),
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
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.trashCan)),
                  ),
                ],
              ),
            );
          },
        ),
        const Expanded(
          child: SizedBox(),
          // flex: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 70, left: 77),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(
                          8.0,
                          7.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 55,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.34765625),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Cancelar Compra',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
