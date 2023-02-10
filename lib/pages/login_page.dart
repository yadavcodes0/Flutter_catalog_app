import 'package:catalog_f/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image.asset(
                "assets/images/login page.png",
                fit: BoxFit.cover,
              ),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      label: Text("Username"),
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      label: Text("Password"),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(
                        const Duration(seconds: 1),
                      );
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(150, 40),
                  //   ),
                  //   child: const Text("Login"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
