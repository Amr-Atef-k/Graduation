import 'package:flutter/material.dart';
import 'package:gradution_project/HomeScreen.dart';
import 'Account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.red,
            Colors.white,
            Colors.blue,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(child: _home()),
      ),
    );
  }

  Widget _home() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              _icon(),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isNotEmpty &&
                      value.contains('@') &&
                      value.endsWith('.com')) {
                    return null;
                  } else {
                    return 'please enter valid email';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Email',
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 23,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isNotEmpty && value.length >= 6) {
                    return null;
                  } else {
                    return 'please enter your password';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Password',
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forget Password?',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    if (!formkey.currentState!.validate()) {
                      return;
                    }
                    ;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('login'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Don\'t have account?'),
                  TextButton(
                    child: const Text(
                      'create one',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38, width: 3),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.person,
        color: Colors.black38,
        size: 130,
      ),
    );
  }
}
