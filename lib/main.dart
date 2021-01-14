import 'package:flutter/material.dart';
import 'package:flutter_calismalarim/arayuz/scaaffold.dart';
import 'package:flutter_calismalarim/arayuz/degisenwidget.dart';

import 'arayuz/ilkders.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => ScaffoldOgesi(),
      "/degisenwidget": (context) => DegisenWidget(),
      "/ilkders": (context) => IlkdersWidget(),
    },
  ));
}
//state durum less olumsuzluk... Stateless=Durumsuz, uygulama boyunca değişmeyecek widgetler
//Statefull duruma göre değişebilen widgetler
