import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SusBoxWidget extends StatefulWidget {
  const SusBoxWidget({Key? key}) : super(key: key);

  @override
  _SusBoxWidgetState createState() => _SusBoxWidgetState();
}

class _SusBoxWidgetState extends State<SusBoxWidget> {
  double minHeight = 161;
  double maxHeight = 350;
  double currentHeight = 161;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentHeight == minHeight
              ? currentHeight = maxHeight
              : currentHeight = minHeight;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.ease,
        width: double.maxFinite,
        height: currentHeight,
        decoration: BoxDecoration(
            color: Color(0xFF59B3EB),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(10, 10),
                blurRadius: 10,
              ),
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sabe como obter seu cartão SUS?',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Siga as instruções e saiba como obter seu cartão SUS.',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              if (currentHeight == maxHeight)
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Para gerar seu cartão do SUS é totalmente gratuito e rápido, basta comparecer a UBS mais próxima com os seguintes documentos:',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: Text(
                              '- RG\n- CPF\n- Comprovante de endereço.',
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              Icon(
                currentHeight == minHeight
                    ? Icons.keyboard_arrow_down_rounded
                    : Icons.keyboard_arrow_up_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
