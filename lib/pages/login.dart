import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            'images/login.jpeg',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: Text(
              'Login here',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                  hintText: 'Username',
                )),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  hintText: 'Email',
                )),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    )),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
