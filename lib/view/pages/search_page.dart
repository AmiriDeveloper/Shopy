import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      appBar: AppBar(
          title: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            Expanded(child: Container()),
          ]),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0),
      body: Container(
        color: Colors.deepPurpleAccent,
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search_sharp),
                label: const Text('Search'),
                fillColor: Colors.grey[300],
                filled: true,
                hintText: "Search",
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
      ),
    );
  }
}
