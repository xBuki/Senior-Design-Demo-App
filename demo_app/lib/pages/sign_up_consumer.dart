import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class ConsumerSignUpPage extends StatefulWidget {
  const ConsumerSignUpPage({Key? key}) : super(key: key);

  @override
  State<ConsumerSignUpPage> createState() => _ConsumerSignUpPage();
}

class _ConsumerSignUpPage extends State<ConsumerSignUpPage> {
  final TextEditingController _controller = TextEditingController();
  bool passwordIsValid = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 130,
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
                    decorationColor: Color.fromARGB(255, 34, 114, 218),
                    //decoration: TextDecoration.underline,
                    decorationThickness: 1),
              ),
              const Text(
                'Consumer Portal',
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'EMAIL ADDRESS',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                  controller: _controller,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'PASSWORD',
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
                    hintText: 'CONFIRM PASSWORD',
                  ),
                ),
              ),
              FlutterPwValidator(
                  width: 300,
                  height: 200,
                  minLength: 9,
                  uppercaseCharCount: 1,
                  specialCharCount: 1,
                  numericCharCount: 3,
                  onSuccess: () {
                    setState(() {
                      passwordIsValid = true;
                    });
                  },
                  controller: _controller),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                width: 350,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 25, 91, 177),
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
    );
  }
}
