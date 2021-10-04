import 'package:proyecto_sw/pages/alert_page.dart';
import 'package:proyecto_sw/pages/avatar_page.dart';
import 'package:proyecto_sw/pages/home_page.dart';
import 'package:proyecto_sw/pages/lista_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:proyecto_sw/pages/forms_page.dart';
import 'package:proyecto_sw/pages/slider_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales:[
        const Locale('en', 'EN'),
        const Locale('es','ES'),
      ], 
      title: 'Swoboda Inside',
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
        'forms' : (BuildContext context) => FormsPage(),
        'slider' : (BuildContext context) => SliderPage(),
        'list' :(BuildContext context) => ListaPage(),
      },
    );
  }

}