import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news/Providers/NewsProvider.dart';
import 'package:news/Screens/NewsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NewsScreen(),
      ),
    );
  }
}