import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/provider/provider.dart';

import 'pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MainProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To Do',
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
        },
      ),
    );
  }
}
