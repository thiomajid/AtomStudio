import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/utility/clips.dart';
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
            Stack(
              children: [
                Opacity(
                  //semi red clippath with more height and with 0.5 opacity
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
                        Lottie.asset(
                          "assets/lottie/headset.json",
                          repeat: false,
                        ),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 0, 25)),
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
                          ' S',
                          style: GoogleFonts.courgette(
                            textStyle: const TextStyle(
                              fontSize: 55,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "ongs",
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
            ),
          ],
        ),
      ),
    );
  }
}
