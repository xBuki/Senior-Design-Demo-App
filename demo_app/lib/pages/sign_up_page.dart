import 'package:demo_app/pages/home_page.dart';
import 'package:demo_app/pages/sign_up_consumer.dart';
import 'package:demo_app/pages/sign_up_physician.dart';
import 'package:demo_app/pages/old_welcome_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'What are you signing up for?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              // Medical Section
              const SizedBox(height: 100.0),
              Image.asset(
                'assets/images/doctor-icon.jpg',
                height: 100,
              ),
              const SizedBox(height: 2.0),
              SizedBox(
                height: 100,
                width: 250,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 216, 194, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Medical Physician Portal',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 250, 249, 249),
                    ),
                  ),
                ),
              ),
              // Consumer Section
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/images/consumer-icon.png',
                height: 100,
              ),
              const SizedBox(height: 2.0),
              SizedBox(
                height: 100,
                width: 250,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 97, 29),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Consumer Portal',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 250, 249, 249),
                    ),
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
