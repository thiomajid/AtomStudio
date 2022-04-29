import 'package:fluent_ui/fluent_ui.dart';
import 'package:music_player/components/discovery/card_template.dart';
import 'package:music_player/models/songs_model.dart';
import 'package:music_player/view_models/discovery_view_model.dart';

class EditorsChoice extends StatefulWidget {
  const EditorsChoice({Key? key}) : super(key: key);

  @override
  State<EditorsChoice> createState() => _EditorsChoiceState();
}

class _EditorsChoiceState extends State<EditorsChoice> {
  final DiscoveryViewModel _model = DiscoveryViewModel();
  final List<Song> _songs = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _model.generateSongs(_songs);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          _songs.length,
          (index) => Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
            child: SongCardTemplate(_songs[index]),
          ),
        ),
      ),
    );
  }
}
