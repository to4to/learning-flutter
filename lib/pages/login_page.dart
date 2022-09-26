import "package:flutter/material.dart";
import 'package:flutter_practice_001/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/image/hey.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
               Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter User Name", labelText: "User Name"),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter  Password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                             Container(

width: 150,
height: 50,
color: Colors.deepPurple,
                                  child:const Text("Login"),                             
                             ),



                    
                   // ElevatedButton(
                     //   onPressed: () {
                          // ignore: avoid_print
                       //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                        
                       // style: TextButton.styleFrom(),
                      //  child: const Text("Login")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
