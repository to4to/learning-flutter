import 'package:flutter/material.dart';
import 'package:flutter_practice_001/pages/homePage.dart';
import 'package:flutter_practice_001/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         
       themeMode: ThemeMode.light,
       theme: ThemeData(primarySwatch: Colors.blue),
       darkTheme: ThemeData(brightness: Brightness.dark
       ),
       routes: {
        "/":(context) =>HomePage(),
        "/login":(context) => LoginPage()
       },
    );
  }
}
