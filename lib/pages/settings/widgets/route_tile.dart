import 'package:atom_studio/utility/models/setting_tile_model.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SettingTileRoute extends StatelessWidget {
  SettingTile tile;
  SettingTileRoute({required this.tile, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(tile.route),
      child: Card(
        child: ListTile(
          title: Text(tile.title),
          leading: Icon(tile.leadingIcon),
          trailing: Icon(tile.trailingIcon),
        ),
      ),
    );
  }
}
