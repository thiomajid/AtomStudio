import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YoutubeSettings extends StatelessWidget {
  const YoutubeSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
        title: Text(
          "YouTube Settings",
          style: GoogleFonts.courgette(
            textStyle: const TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Column(),
    );
  }
}
