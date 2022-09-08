import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  List notes = [
    {"note": "go to gym "},

    {"note":"go to gym "},

    {"note":"go to gym "},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notes'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("addnotes");
        }
      ),
      body: Container(
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, i) {
            return Dismissible(key: Key("$i"), child: ListNotes(notes: notes[i],));
          },
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;

  ListNotes({this.notes});

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        title: Text("Title"),
        subtitle: Text("${notes['note']}"),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit),
        ),
      ),
    );
  }
}
