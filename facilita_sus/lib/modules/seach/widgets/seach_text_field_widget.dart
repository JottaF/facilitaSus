import 'package:flutter/material.dart';

class SeachTextFieldWidget extends StatefulWidget {
  const SeachTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SeachTextFieldWidgetState createState() => _SeachTextFieldWidgetState();
}

class _SeachTextFieldWidgetState extends State<SeachTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    String textFilter;
    return TextField(
      obscureText: false,
      maxLines: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        labelText: 'Pesquise aqui',
      ),
      onChanged: (text) {
        textFilter = text;
        print(textFilter);
        setState(() {});
      },
    );
  }
}
