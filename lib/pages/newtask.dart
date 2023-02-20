import 'package:flutter/material.dart';


class newtask extends StatefulWidget {
  const newtask({super.key});

  @override
  State<newtask> createState() => _newtaskState();
}

class _newtaskState extends State<newtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new task'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                labelText: 'Add Task',
                hintText: 'Enter your task'
              ),
            ),
            SizedBox(
              height:20 ,
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple) ),
              onPressed: (){},
               child: Text(
                "Add",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                )
            )
          ],
        ),
      ),
    );
  }
}

