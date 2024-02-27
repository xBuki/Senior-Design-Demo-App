import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/traffic.png'),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
        body: Positioned(
          right: 100,
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 31, 116, 185),
            ),
            child: const Column(
              children: [
                Text(
                  'AppName',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'Data Export Request Form',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
