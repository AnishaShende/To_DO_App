import 'package:flutter/material.dart';
import 'package:to_do/main.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 103, 58, 183),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text(
                  'Shripad Kulkarni',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  'shrikulkarni2205@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/prifile.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              title: TextButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 30,
              ),
              title: TextButton(
                style: ButtonStyle(),
                onPressed: () {
                
                },
                child: Text(
                  'Profile Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
                size: 30,
              ),
              title: TextButton(
                style: ButtonStyle(),
                onPressed: () async {
                  await Navigator.pushNamed(context, '/login');
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
