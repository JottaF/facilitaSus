import 'package:facilita_sus/modules/home/widgets/app_bar_widget.dart';
import 'package:facilita_sus/modules/home/widgets/button_card_widget.dart';
import 'package:facilita_sus/modules/home/widgets/sus_box_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: ListView(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 30),
              child: Column(
                children: [
                  SusBoxWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonCardWidget(
                        image: 'assets/images/icon_localizacao.png',
                        label: 'Unidades de saúde',
                        onTap: () {
                          Navigator.pushNamed(context, '/seachPage');
                        },
                      ),
                      ButtonCardWidget(
                        image: 'assets/images/icon_documentos.png',
                        label: 'Documentos necessários',
                        onTap: () {
                          Navigator.pushNamed(context, '/documentacaoPage');
                        },
                      ),
                      ButtonCardWidget(
                        image: 'assets/images/icon_news.png',
                        label: 'Alguma',
                        onTap: () {},
                      ),
                      ButtonCardWidget(
                        image: 'assets/images/icon_estetoscopio.png',
                        label: 'coisa',
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
