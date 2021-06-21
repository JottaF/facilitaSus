import 'package:facilita_sus/modules/home/widgets/button_card_widget.dart';
import 'package:facilita_sus/modules/home/widgets/sus_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 30),
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
                      label: 'Alguma coisa',
                      onTap: () {},
                    ),
                    ButtonCardWidget(
                      image: 'assets/images/icon_estetoscopio.png',
                      label: 'Alguma coisa',
                      onTap: () {},
                    ),
                    ButtonCardWidget(
                      image: 'assets/images/icon_localizacao.png',
                      label: 'Alguma coisa',
                      onTap: () {},
                    ),
                    ButtonCardWidget(
                      image: 'assets/images/icon_estetoscopio.png',
                      label: 'Alguma coisa',
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
