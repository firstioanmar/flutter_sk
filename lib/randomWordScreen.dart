import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'saveWordScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String randomWord = WordPair.random().asString;
  var saveWords = [];

  void randomWordGen() {
    setState(() {
       randomWord = WordPair.random().asString;
    });
  }
  void _saveWord() {
    saveWords.add(randomWord);
    
    // halaman baru
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SavedWordScreen(savedWords : saveWords))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your random word',
            ),
            Text(
              randomWord,
              style: Theme.of(context).textTheme.headline2,
            ),
            IconButton(onPressed: _saveWord, icon: const Icon(Icons.favorite_border))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: randomWordGen,
        tooltip: 'random word',
        child: const Icon(Icons.shuffle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
