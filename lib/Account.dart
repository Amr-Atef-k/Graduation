import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            _icon(),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Name',
                labelText: 'Name',
              ),
            ),
            SizedBox(
              height: 23,
            ),
            TextFormField(
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
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Password',
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('create'),
              ),
            ),
          ],
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
