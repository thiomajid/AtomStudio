import 'package:animations/animations.dart';
import 'package:atom_studio/models/song_model.dart';
import 'package:atom_studio/pages/discovery/widgets/card_template.dart';
import 'package:atom_studio/pages/song_detail/song_detail.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/view_models/discovery_view_model.dart';
import 'package:fluent_ui/fluent_ui.dart';

class EditorsChoice extends StatefulWidget {
  const EditorsChoice({Key? key}) : super(key: key);

  @override
  State<EditorsChoice> createState() => _EditorsChoiceState();
}

class _EditorsChoiceState extends State<EditorsChoice> {
  final _songMaps = DiscoveryViewModel.getSongsMap();

  final List<Song> _songs = List.empty(growable: true);

  void loadSongs() {
    for (var element in _songMaps) {
      _songs.add(Song.fromMap(element));
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    loadSongs();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          _songs.length,
          (index) => OpenContainer(
            transitionType: ContainerTransitionType.fadeThrough,
            transitionDuration: const Duration(milliseconds: 500),
            middleColor: AtomColors.gunmetal,
            closedBuilder: ((context, action) => Padding(
                  padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
                  child: SongCardTemplate(_songs[index]),
                )),
            openBuilder: (context, action) => SongDetailPage(_songs[index]),
          ),
        ),
      ),
    );
  }
}
