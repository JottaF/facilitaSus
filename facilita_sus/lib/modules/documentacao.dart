import 'package:facilita_sus/shared/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

class DocumentacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 45, right: 45, bottom: 30),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage('assets/images/docImage.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Documentação necessária para atendimento:',
                style: TextStyle(
                  color: Color.fromRGBO(56, 161, 188, 10),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'CPF\n'
                'RG\n'
                'RG\n'
                'Cartão do SUS\n'
                'Exames caso possua\n',
                style: TextStyle(
                  color: Color.fromRGBO(56, 161, 188, 10),
                  fontSize: 20,
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BackButtonWidget(),
    );
  }
}
