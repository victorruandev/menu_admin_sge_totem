import 'package:flutter/material.dart';

class FooterButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;

  const FooterButtonWidget({Key? key, required this.buttonText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 70, left: 77),
      child: Row(
        children: [
          InkWell(
            onTap: () {}, // voltar para o caixa
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
                  ),
                ],
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 55,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.3156),
          // se o estado(ou index == 1) for de vendas: SizedBox();
          InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(
                      0.5,
                      3.3,
                    ),
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: SizedBox(
                width: 300,
                height: 62,
                child: Center(
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: Color.fromRGBO(55, 80, 255, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
