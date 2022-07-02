import 'package:flutter/material.dart';
import 'package:masterclass_mockup_01/features/login/presenter/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

                                                                                                                                                                                                             
