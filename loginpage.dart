import "package:flutter/material.dart";
import 'package:project1/taplesPage.dart';

import 'helper.dart';
import 'models/login_model.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginModel loginModel;

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _accno = TextEditingController();
    TextEditingController _devid = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(" Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-Mail',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: _password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: _accno,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'sales man account no',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: _devid,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Device id',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 50,
                width: 100,
                color: Color.fromARGB(255, 32, 8, 1),
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      loginModel = await loginUser(int.parse(_accno.text),
                          _password.text, _devid.text, _email.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TaplesPage(token: loginModel.token)));
                    } catch (e) {
                      print("errrro in login ${e.toString()}");
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: const [
                        Icon(Icons.login_outlined),
                        Text('Login')
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
