import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/models/songs_model.dart';
import 'package:music_player/pages/song_detail.dart';

class SongCardTemplate extends StatelessWidget {
  final Song song;
  const SongCardTemplate(this.song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: song,
      child: GestureDetector(
        child: Card(
          elevation: 12,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  song.imageUrl ?? '',
                  width: 200,
                  height: 200,
                ),
              ),
              Text(
                "${song.title}",
                style: GoogleFonts.courgette(),
              ),
              const Divider(
                size: 50,
              ),
              Text(
                "${song.author}",
                style: GoogleFonts.amiri(),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            FluentPageRoute(builder: (context) => SongDetailPage(song)),
          );
        },
      ),
    );
  }
}
