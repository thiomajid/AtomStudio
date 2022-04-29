import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:music_player/models/songs_model.dart';

class DiscoveryViewModel {
  /// Reads the `songs.json` file and returns a list of `dynamic` songs.
  Future<List<dynamic>> _loadSongsData() async {
    final String content =
        await rootBundle.loadString("assets/ressources/songs.json");

    return (jsonDecode(content) as List<dynamic>);
  }

  /// Loops over the list of `dynamic` songs and returns a list of songs.
  void generateSongs(List<Song> songs) async {
    for (var song in await _loadSongsData()) {
      var t = Song(
        author: song["author"],
        albumName: song["albumName"],
        description: song["description"],
        imageUrl: song["imageUrl"],
        releaseYear: song["releaseYear"],
        youtubeLink: song["youtubeLink"],
        title: song["title"],
      );
      songs.add(t);
    }
  }
}
