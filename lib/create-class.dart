import 'package:flutter/material.dart';

class CreateClass extends StatefulWidget {
  const CreateClass({super.key});

  @override
  State<CreateClass> createState() => _CreateClassState();
}

class _CreateClassState extends State<CreateClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: TextField(
              decoration: InputDecoration(label: Text('Ketik')),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(child: Text("Open Class"), onPressed: () {
            Navigator.of(context).pop();
          },)
        ],
      ),
    );
  }
}
