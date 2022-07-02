import 'package:atom_studio/pages/settings/widgets/route_tile.dart';
import 'package:atom_studio/utility/models/setting_tile_model.dart';
import 'package:atom_studio/view_models/settings_view_model.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SettingsTiles extends StatelessWidget {
  SettingsTiles({Key? key}) : super(key: key);
  final List<SettingTile> _tiles = SettingsViewModel.tiles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ListBody(
        children: List.generate(
          _tiles.length,
          (index) => Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SettingTileRoute(
                tile: _tiles[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
