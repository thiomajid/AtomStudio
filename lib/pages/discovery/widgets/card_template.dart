import 'package:atom_studio/models/song_model.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class SongCardTemplate extends StatelessWidget {
  final Song song;
  const SongCardTemplate(this.song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
            song.title,
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
    );
  }
}
