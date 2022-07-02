import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:atom_studio/pages/home/widgets/home_cards.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/utility/clips.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: SizedBox(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                //stack overlaps widgets
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
                    height: 380,
                    color: AtomColors.gunmetal,
                    child: Row(
                      children: [
                        Lottie.asset("assets/lottie/music-listener.json",
                            height: 300, alignment: Alignment.bottomCenter),
                        AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText(
                              "AtomStudio",
                              textStyle: GoogleFonts.courgette(
                                textStyle: const TextStyle(
                                    fontSize: 55,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                            FadeAnimatedText(
                              "Vibe to the rythme",
                              textStyle: GoogleFonts.courgette(
                                textStyle: const TextStyle(
                                    fontSize: 35,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                            FadeAnimatedText(
                              "Every note, for YOU...",
                              textStyle: GoogleFonts.courgette(
                                textStyle: const TextStyle(
                                    fontSize: 35,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Flexible(
              child: HomeCards(),
            ),
          ],
        ),
      ),
    );
  }
}
