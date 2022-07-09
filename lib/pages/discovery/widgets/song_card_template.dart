import 'package:atom_studio/models/song_model.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            child: CachedNetworkImage(
              imageUrl: song.imageUrl ?? '',
              width: 200,
              height: 200,
              filterQuality: FilterQuality.high,
              placeholder: (context, url) => const ProgressRing(
                activeColor: AtomColors.gunmetal,
              ),
              errorWidget: (context, url, error) =>
                  const Icon(FluentIcons.error),
            ),
          ),
          Text(
            song.title,
            style: GoogleFonts.courgette(),
            overflow: TextOverflow.ellipsis,
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
