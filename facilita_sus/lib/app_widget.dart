import 'package:flutter/material.dart';

import 'modules/documentacao.dart';
import 'modules/home/home_page.dart';
import 'modules/seach/seach_page.dart';
import 'modules/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashPage',
      routes: {
        '/homePage': (context) => HomePage(),
        '/seachPage': (context) => SeachPage(),
        '/splashPage': (context) => SplashPage(),
        '/documentacaoPage': (context) => DocumentacaoPage(),
      },
    );
  }
}
