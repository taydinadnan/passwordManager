import 'package:flutter/material.dart';

import '../main.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  final PreferredSizeWidget? bottom;
  MyAppBar({this.bottom});

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => bottom == null
      ? Size(56, AppBar().preferredSize.height)
      : Size(56, 80 + AppBar().preferredSize.height);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text("Pass Manager"),
      actions: [
        IconButton(
          icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
              ? Icons.dark_mode
              : Icons.light_mode),
          onPressed: () {
            MyApp.themeNotifier.value =
                MyApp.themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
          },
        )
      ],
    );
  }
}
