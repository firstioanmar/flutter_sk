import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class SavedWordScreen extends StatelessWidget {
  var savedWords = [];

  SavedWordScreen({required this.savedWords});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(' Saved Word '),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Your saved word',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(savedWords.join(' , ')),
              ],
            ),
          ),
        );
  }
}
