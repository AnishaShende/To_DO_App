import 'package:flutter/material.dart';
import 'package:to_do/pages/homepage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Material(
        child: Column(
          children: [
            Image.asset(
              'images/login.jpeg',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
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
                    onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homepage(),
                              ),
                            );
                            // setDefaultVar();
                          },
                    child: Text('Login'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
