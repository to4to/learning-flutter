import 'package:flutter/material.dart';
import 'package:flutter_practice_001/pages/homePage.dart';
import 'package:flutter_practice_001/pages/login_page.dart';
import 'package:flutter_practice_001/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (   
      
         debugShowCheckedModeBanner: false,
       themeMode: ThemeMode.light,
       theme: ThemeData(primarySwatch: Colors.blue,
       fontFamily: GoogleFonts.lato().fontFamily,
      
       ),
       darkTheme: ThemeData(brightness: Brightness.dark
       ),
         initialRoute: "/",
       
       routes: {
        

        MyRoutes.loginRoute:(context) =>const LoginPage(),
        MyRoutes.homeRoute:(context) => const HomePage(),
       },
    );
  }
}
