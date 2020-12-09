import 'package:flutter/material.dart';
import 'package:PotatoesFlutter/PotatoesFlutter.dart';
import 'package:potatoes_app/util/apps/config.dart';
import 'package:potatoes_app/util/apps/themes.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ProjectTitle,
        theme: ThemeApps(),
        initialRoute: "/",
        routes:routes(context)
    );
  }
}
