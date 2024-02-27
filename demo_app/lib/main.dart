import 'package:demo_app/pages/form_page.dart';
import 'package:demo_app/pages/homepage_page.dart';
import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/pages/sign_up_consumer.dart';
import 'package:demo_app/pages/tracking_page.dart';
import 'package:demo_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Name',
      home: ConsumerSignUpPage(),
    );
  }
}
