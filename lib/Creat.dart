// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Container(
          child: Column(
        children: [
          Form(
              child: Column(
            children: [
              TextFormField(
                maxLength: 30,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Title Note",
                    prefixIcon: Icon(Icons.note)),
              ),
              TextFormField(
                minLines: 1,
                maxLines: 3,
                maxLength: 200,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Note",
                    prefixIcon: Icon(Icons.note)),
              ),
            RaisedButton(
                onPressed:(){},
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
              child: Text("Add Note",style: Theme.of(context).textTheme.headline6,),
            )

            ],
          ))
        ],
      )),
    );
  }
}
