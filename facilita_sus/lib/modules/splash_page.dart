import 'package:facilita_sus/shared/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Image(
                      image: AssetImage('assets/images/splash.png'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Bem vindo!',
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Color.fromRGBO(51, 51, 51, 10),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Cuide da sua saúde, se informe sobre os\n'
                      '     serviços gratuítos da saúde pública.',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Color.fromRGBO(51, 51, 51, 50),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                )),
          ],
        ),
        bottomNavigationBar: BackButtonWidget(
          label: 'INICIAR',
        ),
      ),
    );
  }
}
