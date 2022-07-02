import 'package:atom_studio/utility/models/setting_tile_model.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SettingsViewModel {
  static List<SettingTile> get tiles => [
        SettingTile(
            title: "Audio Settings",
            leadingIcon: FluentIcons.music_in_collection,
            trailingIcon: FluentIcons.chevron_right,
            route: "/settings/audio"),
        SettingTile(
          title: "Video Settings",
          leadingIcon: FluentIcons.video,
          trailingIcon: FluentIcons.chevron_right,
          route: "/settings/video",
        ),
        SettingTile(
          title: "YouTube Settings",
          leadingIcon: FluentIcons.play,
          trailingIcon: FluentIcons.chevron_right,
          route: "/settings/youtube",
        ),
        SettingTile(
          title: "Discovery Settings",
          leadingIcon: FluentIcons.globe2,
          trailingIcon: FluentIcons.chevron_right,
          route: "/settings/discovery",
        ),
      ];
}
