import 'package:flutter/material.dart';
import 'package:flutter_application_1/registration_screen.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => NextPageState();
}

class NextPageState extends State<NextPage> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading:  InkWell(
        onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));}, 
      )
    ),
    body: 
      Text("next page is here"));
  }
}