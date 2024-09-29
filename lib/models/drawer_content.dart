import 'package:flutter/cupertino.dart';

class DrawerContent {
  DrawerContent(
      {required this.title, required this.onPress, required this.leading});

  final Widget leading;
  final Widget title;
  final Function() onPress;
}
