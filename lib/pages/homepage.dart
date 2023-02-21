import 'package:flutter/material.dart';
import 'package:to_do/pages/mydrawer.dart';

Widget mycard(String task) {
  return Container(
    width: 400,
    height: 170,
    child: Card(
      elevation: 7,
      margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              task,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )),
        SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
          onPressed: () {
            print('Deleted');
          },
          icon: Icon(Icons.delete),
          label: Text('Delete task'),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black) ),
        )
      ]),
    ),
  );
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Your Tasks',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        drawer: mydrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              mycard('working Out'),
              mycard('Swimming'),
              mycard('Playing Football'),
              mycard('Playing Football'),
              mycard('Playing Football'),
              mycard('Playing Football'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/new');
          },
          child: Icon(
            Icons.add, 
          ),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}

