import 'package:facilita_sus/modules/seach/widgets/seach_text_field_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(120),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFAAAACC).withOpacity(.25),
                                      blurRadius: 10,
                                      offset: Offset(5, 5),
                                    ),
                                    BoxShadow(
                                      color: Color(0xFFAAAACC).withOpacity(.5),
                                      blurRadius: 20,
                                      offset: Offset(10, 10),
                                    ),
                                  ],
                                ),
                                child: SeachTextFieldWidget()),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFAAAACC).withOpacity(.25),
                                  blurRadius: 10,
                                  offset: Offset(5, 5),
                                ),
                                BoxShadow(
                                  color: Color(0xFFAAAACC).withOpacity(.5),
                                  blurRadius: 20,
                                  offset: Offset(10, 10),
                                ),
                              ],
                            ),
                            child: IconButton(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(),
                                icon: const Icon(Icons.mic),
                                tooltip: 'Pressione para falar',
                                onPressed: () {}),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    child: Divider(
                  color: Colors.black54,
                )),
              ],
            ),
          ),
        );
}
