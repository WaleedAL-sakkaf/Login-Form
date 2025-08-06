import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_form/Buttons/button_default.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();

  var passowrd = TextEditingController();

  var person = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isPassowrd = true;
  var eyeIcon = Icons.remove_red_eye;
  var readeyeIcon = Icons.remove_red_eye_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    "Login Form ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' Email must Not be Empty';
                      }
                      return null;
                    },
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter your Email Address',

                      // hintText: 'Enter your Email Address',
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' Name must Not be Empty';
                      }
                      return null;
                    },
                    controller: person,
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter your Name',

                      // hintText: 'Enter your Email Address',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' Passowrd must Not be Empty';
                      }
                      return null;
                    },
                    controller: passowrd,
                    obscureText: isPassowrd,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter your Password',

                      // hintText: 'Enter your Email Address',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              (isPassowrd = !isPassowrd);
                            });
                          },
                          icon: Icon(
                            isPassowrd
                                ? Icons.visibility
                                : Icons.visibility_off,
                          )),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultButton(
                      text: 'Login in ',
                      function: () {
                        if (formKey.currentState != null &&
                            formKey.currentState!.validate()) {
                          print(email.text);
                          print(person.text);
                          print(passowrd.text);
                        }
                      }),
                  const SizedBox(
                    height: 7,
                  ),
                  defaultButton(
                      text: 'Regestor',
                      function: () {
                        print(email.text);
                        print(person.text);
                        print(passowrd.text);
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      const Text(
                        " هل تريد انشاء حساب ؟",
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "انشاء حساب ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
