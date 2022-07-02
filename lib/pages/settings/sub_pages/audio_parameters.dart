import 'package:atom_studio/pages/settings/widgets/sub_widgets/audio_sliders.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioParameters extends StatefulWidget {
  const AudioParameters({Key? key}) : super(key: key);

  @override
  State<AudioParameters> createState() => _AudioParametersState();
}

class _AudioParametersState extends State<AudioParameters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
        title: Text(
          "Audio Settings",
          style: GoogleFonts.courgette(
            textStyle: const TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: const [
          AudioSettingsSliders(),
        ],
      ),
    );
  }
}
