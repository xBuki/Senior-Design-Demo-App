import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class ConsumerSignUpPage extends StatelessWidget {
  const ConsumerSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Sign Up'),
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
              'Create your Account',
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
                  hintText: 'example@email.com',
                ),
                textAlign: TextAlign.center,
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
                  hintText: 'Password',
                ),
                textAlign: TextAlign.center,
                obscureText: true,
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
                  hintText: 'Confirm Password',
                ),
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            SizedBox(height: 100),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  //
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text('Create Account'),
              ),
            ),
            SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'Already have an account? Login',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
