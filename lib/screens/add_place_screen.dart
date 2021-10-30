import "package:flutter/material.dart";

import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = "/add-place";

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a New Place"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: _titleController,
                    ),
                    SizedBox(height: 10),
                    ImageInput(),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.add),
            label: Text("Add Place"),
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).accentColor,
              ),
              foregroundColor: MaterialStateProperty.all(
                Colors.black,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
