import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api/provider/home_provider.dart';
import 'package:provider_api/provider/login_provider.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeProvider()),
          ChangeNotifierProvider(create: (_) => LoginProvider()),
        ],
        child: Home(),
      ),
    );
  }
}
