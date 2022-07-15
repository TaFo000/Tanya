import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_page.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body:
      SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text("Регистрация"),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Имя',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Пароль',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Повторите пароль',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NextPage()),
  );


            },
            child: Container(
              color: color,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
      ) 
    );
  }
}
