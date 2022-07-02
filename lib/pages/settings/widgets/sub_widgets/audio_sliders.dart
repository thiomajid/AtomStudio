import 'package:atom_studio/models/audio_settings_model.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AudioSettingsSliders extends StatefulWidget {
  const AudioSettingsSliders({Key? key}) : super(key: key);

  @override
  State<AudioSettingsSliders> createState() => _AudioSettingsSlidersState();
}

class _AudioSettingsSlidersState extends State<AudioSettingsSliders> {
  final AudioSettings _settings = AudioSettings();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(
            children: [
              const Text("Volume"),
              Slider(
                value: _settings.volume,
                min: 0,
                max: 100,
                divisions: 100,
                label: "${_settings.volume}%",
                onChanged: (value) => setState(() {
                  _settings.volume = value;
                }),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: Column(
            children: [
              const Text("Frequency"),
              Slider(
                value: _settings.frequency,
                min: 0,
                max: 100,
                divisions: 100,
                label: "${_settings.frequency}Hz",
                onChanged: (value) => setState(() {
                  _settings.frequency = value;
                }),
              ),
            ],
          ),
        )
      ],
    );
  }
}
