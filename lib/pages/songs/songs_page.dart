import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SongsPage extends StatefulWidget {
  const SongsPage({Key? key}) : super(key: key);

  @override
  State<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> {
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
                  "assets/lottie/music-note.json",
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
                  ' S',
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 55, fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  "ongs",
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
