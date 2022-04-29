class Song {
  String? author;
  String? imageUrl;
  int? releaseYear;
  String? title;
  String? youtubeLink;
  String? description;
  String? albumName;

  Song(
      {this.author,
      this.albumName,
      this.description,
      this.imageUrl,
      this.releaseYear,
      this.youtubeLink,
      this.title});

  @override
  String toString() {
    return "Author = $author and Title = $title";
  }
}
