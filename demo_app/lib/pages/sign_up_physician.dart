import 'package:demo_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class PhysicianSignUp extends StatefulWidget {
  const PhysicianSignUp({super.key});

  @override
  State<PhysicianSignUp> createState() => _PhysicianSignUp();
}

class _PhysicianSignUp extends State<PhysicianSignUp> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.medical_information_outlined,
                    size: 100,
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.transparent, // Step 2 SEE HERE
                        shadows: [
                          Shadow(offset: Offset(0, -5), color: Colors.black)
                        ], // Step 3 SEE HERE
                        decoration: TextDecoration.underline,
                        //decorationStyle: TextDecorationStyle.dashed,
                        decorationColor: Color.fromARGB(255, 2, 80, 168),
                        //decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                  const Text(
                    'Physician Portal',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'FIRST NAME',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'LAST NAME',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'EMAIL',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        // Check for a valid email format using a regular expression
                        if (!RegExp(
                                r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null; // Return null for valid input
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'PHONE NUMBER',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a phone number';
                        }

                        // Remove any non-digit characters from the input
                        String cleanedPhoneNumber =
                            value.replaceAll(RegExp(r'[^0-9]'), '');

                        // Check if the cleaned phone number has 10 digits
                        if (cleanedPhoneNumber.length != 10) {
                          return 'Please enter a valid 10-digit phone number';
                        }

                        return null; // Return null for valid input
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'NIP ID',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an ID';
                        }

                        // Remove any non-digit characters from the input
                        String cleanedID =
                            value.replaceAll(RegExp(r'[^0-9]'), '');

                        // Check if the cleaned ID has at least 10 digits
                        if (cleanedID.length < 10) {
                          return 'ID must have at least 10 digits';
                        }

                        return null; // Return null for valid input
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'ORGANIZATION NAME',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'PASSWORD',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        if (_password.text != _confirmpassword.text) {
                          return "Password does not match";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 5),
                  FlutterPwValidator(
                      width: 300,
                      height: 100,
                      minLength: 9,
                      uppercaseCharCount: 1,
                      specialCharCount: 1,
                      numericCharCount: 2,
                      onSuccess: () {},
                      controller: _password),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'CONFIRM PASSWORD',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please re-enter password';
                          }
                          if (_password.text != _confirmpassword.text) {
                            return "Password does not match";
                          }
                          return null;
                        }),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 350,
                    child: FilledButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          print("Yes");
                        } else {
                          print("No");
                        }
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 41, 87),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text(
                        'CREATE ACCOUNT',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
