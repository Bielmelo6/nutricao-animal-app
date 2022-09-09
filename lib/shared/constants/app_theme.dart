import 'package:thunderapp/app.dart';
import 'package:flutter/material.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      fontFamily: kDefaultFontFamily,
    );
  }
}

AppBar AppBarCustom(BuildContext context) {
  return AppBar(
      title: Text(
        'Olá Ana!',
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => Navigator.pushNamed(context, Screens.user),
        ),
      ]);
}
