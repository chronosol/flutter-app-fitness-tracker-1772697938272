import 'package:flutter/material.dart';
import 'package:candy_crush_clone/core/theme/theme.dart';
import 'package:candy_crush_clone/core/routing/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: MyRouter.goRouter,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
    );
  }
}
