import 'package:demo_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class PhysicianSignUp extends StatelessWidget {
  const PhysicianSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Physician Portal'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Consumer Sign Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'First Name',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Last Name',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'example@email.com',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Confirm Password',
                ),
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
