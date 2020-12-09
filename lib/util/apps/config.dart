import 'package:flutter/material.dart';
import 'package:potatoes_app/ui/home/view/home.dart';
import 'package:potatoes_app/ui/launch/view/launch.dart';
import 'package:potatoes_app/ui/uielement/view/subview/viewcanvas.dart';
import 'package:potatoes_app/ui/uielement/view/uielement.dart';

import '../../main.dart';
import 'app.dart';

routes(BuildContext context){
  return {
    "/":(context) =>MyLaunchPage(title:"Launch page"),
    "/home":(context) =>MyHomePage(title:"Home page"),
    "/uielement":(context) =>MyUIElementPage(title:"UI Element page"),
    "/uielement/viewcanvas":(context) =>MyViewCanvasPage(title:"UI Element page"),
  };
}

