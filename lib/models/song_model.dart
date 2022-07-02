// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Song {
  String? author;
  String? imageUrl;
  int? releaseYear;
  String title;
  String? description;
  String? albumName;
  String youtubeUrl;

  Song({
    this.author,
    this.imageUrl,
    this.releaseYear,
    required this.title,
    this.description,
    this.albumName,
    required this.youtubeUrl,
  });

  Song copyWith({
    String? author,
    String? imageUrl,
    int? releaseYear,
    String? title,
    String? description,
    String? albumName,
    String? youtubeUrl,
  }) {
    return Song(
      author: author ?? this.author,
      imageUrl: imageUrl ?? this.imageUrl,
      releaseYear: releaseYear ?? this.releaseYear,
      title: title ?? this.title,
      description: description ?? this.description,
      albumName: albumName ?? this.albumName,
      youtubeUrl: youtubeUrl ?? this.youtubeUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author,
      'imageUrl': imageUrl,
      'releaseYear': releaseYear,
      'title': title,
      'description': description,
      'albumName': albumName,
      'youtubeUrl': youtubeUrl,
    };
  }

  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      author: map['author'] != null ? map['author'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      releaseYear:
          map['releaseYear'] != null ? map['releaseYear'] as int : null,
      title: map['title'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      albumName: map['albumName'] != null ? map['albumName'] as String : null,
      youtubeUrl: map['youtubeUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Song.fromJson(String source) =>
      Song.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Song(author: $author, imageUrl: $imageUrl, releaseYear: $releaseYear, title: $title, description: $description, albumName: $albumName, youtubeUrl: $youtubeUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Song &&
        other.author == author &&
        other.imageUrl == imageUrl &&
        other.releaseYear == releaseYear &&
        other.title == title &&
        other.description == description &&
        other.albumName == albumName &&
        other.youtubeUrl == youtubeUrl;
  }

  @override
  int get hashCode {
    return author.hashCode ^
        imageUrl.hashCode ^
        releaseYear.hashCode ^
        title.hashCode ^
        description.hashCode ^
        albumName.hashCode ^
        youtubeUrl.hashCode;
  }
}
