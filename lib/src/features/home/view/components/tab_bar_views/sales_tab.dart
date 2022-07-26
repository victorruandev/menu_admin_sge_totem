import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/custom_line_dash_widget.dart';

class SalesTab extends StatefulWidget {
  const SalesTab({Key? key}) : super(key: key);

  @override
  State<SalesTab> createState() => _SalesTabState();
}

class _SalesTabState extends State<SalesTab> {
  List<String> items = [
    '11/04',
    '10/04',
    '09/04',
    '08/04',
    '07/04',
    '06/04',
    '05/04',
  ];

  String? selectedItem = '11/04' ;

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
                'Vendas',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              const SizedBox(
                width: 108,
              ),
              DropdownButton<String>(
                dropdownColor: const Color.fromRGBO(55, 80, 255, 1),
                value: selectedItem,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: productDetailsStyle,
                          ),
                        ))
                    .toList(),
                onChanged: (item) => setState(() => selectedItem = item),
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
                'Identificação',
                style: columnNameStyle,
              ),
            ),
            Expanded(
              child: Text(
                'Valor',
                style: columnNameStyle,
              ),
            ),
            Expanded(
              child: Text(
                'Status',
                style: columnNameStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomLineDashWidget(),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 2,
          separatorBuilder: (BuildContext context, int index) =>
              const CustomLineDashWidget(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  const SizedBox(
                    width: 174,
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      '08/04/2022     09:08:32',
                      style: productDetailsStyle,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      '              R\$ 16,00',
                      style: productDetailsStyle,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3AC148),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: InkWell(
                      onTap: () {}, // aparece a nota e faz-se a impressão!
                      child: const FaIcon(FontAwesomeIcons.print),
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
                    color: Color.fromRGBO(55, 80, 255, 1),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.34765625),
            ],
          ),
        )
      ],
    );
  }
}
