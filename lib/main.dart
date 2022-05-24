import 'package:first_app/counter_screen.dart';
import 'package:first_app/home_screen.dart';
import 'package:first_app/login_screen.dart';
import 'package:first_app/messenger_screen.dart';
import 'package:first_app/users_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      //home: LoginScreen(),
      //home: MessengerScreen(),
      //home: UsersScreen(),
      home: CounterScreen(),
    );
  }
}
