import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';

class MyAppState extends ChangeNotifier {
  WordPair _current = WordPair.random();
  final List<WordPair> _favorites = [];

  WordPair get current => _current;
  List<WordPair> get favorites => List.unmodifiable(_favorites);

  void getNext() {
    _current = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite() {
    final pair = _current;
    if (_favorites.contains(pair)) {
      _favorites.remove(pair);
    } else {
      _favorites.add(pair);
    }
    notifyListeners();
  }
}
