import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/tab_bar_views/cancelation_tab.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/tab_bar_views/close_cashier_tab.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/tab_bar_views/go_out_tab.dart';
import 'package:menu_admin_sge_totem/src/features/home/view/components/tab_bar_views/sales_tab.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late Radius borderRight;
  late Radius borderLeft;
  @override
  void initState() {
    super.initState();
    borderRight = const Radius.elliptical(0, 0);
    borderLeft = const Radius.elliptical(0, 0);
  }

  @override
  Widget build(BuildContext context) {
    Color appBarColor = const Color.fromRGBO(55, 80, 255, 1);
    TabController controller = TabController(vsync: this, length: 4);
    // int controllerIndex = controller.index;
    TextStyle labelTabStyle = const TextStyle(fontSize: 23, letterSpacing: 0.8);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.red,
        elevation: 0,
        backgroundColor: appBarColor,
        toolbarHeight: 0,
        bottom: TabBar(
          isScrollable: false,
          physics: const NeverScrollableScrollPhysics(),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: borderRight,
              bottomLeft: borderLeft,
            ),
            color: Colors.white,
            // color: controller.index == 3 ? Colors.red : Colors.white,
            // color: controller.index == 3 ? Colors.red : Colors.white,
          ),
          onTap: (controllerIndex) {
            if (controllerIndex == 0) {
              debugPrint(
                  'mudando cor para cancelamento fechar caixa: $controllerIndex');
            } else if (controllerIndex == 1) {
              borderLeft = Radius.zero;
              debugPrint('mudando cor para vendas: $controllerIndex');
            } else if (controllerIndex == 2) {
              debugPrint('mudando cor para fechar caixa: $controllerIndex');
            } else if (controllerIndex == 3) {
              _onAlertGoOut(context);
            }
          },
          splashBorderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          controller: controller,
          tabs: [
            Tab(
              child: Container(
                // width: 66,
                // height: 32,
                decoration: const BoxDecoration(
                  // color: Color(0xff158998),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    'Cancelamento',
                    style: labelTabStyle,
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    'Vendas',
                    style: labelTabStyle,
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    'Fechar Caixa',
                    style: labelTabStyle,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => _onAlertGoOut(context),
              child: Tab(
                iconMargin: EdgeInsets.zero,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    // shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      'Sair',
                      style: labelTabStyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const <Widget>[
          CancelationTab(),
          SalesTab(),
          CloseCashierTab(),
          GoOutTab(),
        ],
      ),
    );
  }

  _onAlertGoOut(context) {
    final Size size = MediaQuery.of(context).size;
    Alert(
      title: 'Sair',
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
        // width: size.width * 0.45,
        width: 641,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.1),
            const Text('Deseja sair da aplicação?'),
            SizedBox(height: size.height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size.width * 0.0065),
                  child: SizedBox(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.pop(context);
                      },
                      child: Text(
                        'Cancelar',
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.blue,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.016,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size.width * 0.0065),
                  child: SizedBox(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Confirmar',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            color: Colors.blue,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.016),
                      ),
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
}
