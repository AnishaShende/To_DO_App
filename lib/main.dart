import 'package:flutter/material.dart';
import 'package:to_do/pages/loading.dart';
import 'package:to_do/pages/login.dart';
import 'package:to_do/pages/newtask.dart';
import 'pages/homepage.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/' :(context) => loading(),
    '/home' :(context) => homepage(),
    '/new':(context) => newtask(),
    '/login':(context) => login()
  },
));

void mainpageload ()
{
    
}