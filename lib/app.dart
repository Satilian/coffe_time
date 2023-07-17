import 'package:flutter/material.dart';

import 'home/home.dart';

class App extends MaterialApp {
  App({super.key})
      : super(
            home: const HomePage(title: 'Flutter Demo Home Page'),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ));
}
