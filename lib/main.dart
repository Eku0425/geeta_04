import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geeta_04/provider/shlok_provider.dart';
import 'package:geeta_04/routes/routes.dart';
import 'package:geeta_04/screen/detailScreen/provider/deatilScreen_provider.dart';
import 'package:geeta_04/screen/homeScreen/provider/homeScreen_provider.dart';
import 'package:provider/provider.dart';

import 'main.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GitaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DetailScreenProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      routes: MyRoutes.myRoutes,
    );
  }
}
