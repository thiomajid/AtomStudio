import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/utility/clips.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PlaylistPageHeader extends StatelessWidget {
  const PlaylistPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: HomeHeaderClipper(), //set our custom wave clipper
            child: Container(
              color: AtomColors.gunmetal,
              height: 390,
            ),
          ),
        ),
        ClipPath(
          clipper: HomeHeaderClipper(),
          child: Container(
            color: AtomColors.gunmetal,
            height: 380,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Lottie.asset(
                    "assets/lottie/mo-music.json",
                    repeat: false,
                    width: 400,
                    height: 400,
                  ),
                ),
                Text(
                  "Y",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                      fontSize: 55,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "our",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  ' P',
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                      fontSize: 55,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "laylists",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
