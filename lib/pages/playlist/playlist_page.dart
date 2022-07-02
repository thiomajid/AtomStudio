import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Lottie.asset(
                  "assets/lottie/playlist.json",
                  frameRate: FrameRate(20),
                  repeat: false,
                ),
                Text(
                  "Y",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 55, fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  "our",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(fontSize: 35),
                  ),
                ),
                Text(
                  ' P',
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 55, fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  "laylists",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(fontSize: 35),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
