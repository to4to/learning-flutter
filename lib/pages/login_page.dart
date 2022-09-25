import "package:flutter/material.dart";
import 'package:flutter_practice_001/utils/routes.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/image/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter  Password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: ()
                         {
                          // ignore: avoid_print
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        style: TextButton.styleFrom(),
                        child: const Text("Login")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
