import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music_player/utility/atom_colors.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
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
                  "assets/lottie/video-cam.json",
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
                  ' V',
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 55, fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  "ideos",
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
