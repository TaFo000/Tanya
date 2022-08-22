import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_page.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  Color color = Colors.grey;
  bool checkedValue = false;
  bool newValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      backgroundColor: Colors.white,

      body:
      Container(

        child: Center(

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
              children: [
                Text("Parking Map",
                style: TextStyle(fontSize: 24)),
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

                Form(
                  ///autovalidateMode: const AutovalidateMode(),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Повторите пароль',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CheckboxListTile(
                  title: Text("Показать пароль"),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextPage()),
                );
                  },
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Djqnb",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                    height: 48,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0xff3486F4),
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),

                ),

              ],
        ),
            ),
          ),
        ),
      ) 
    );
  }
}
