import 'dart:async';

class IndexHandler {
  final StreamController<int> _index = StreamController<int>();

  Stream<int> get currentIndex => _index.stream;
  Sink<int> get newIndex => _index.sink;

  void dispose() {
    _index.close();
  }
}
