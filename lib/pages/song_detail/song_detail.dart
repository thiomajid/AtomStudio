import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:atom_studio/models/song_model.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/utility/clips.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongDetailPage extends StatelessWidget {
  final Song song;

  const SongDetailPage(this.song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AtomColors.gunmetal),
      body: Column(
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 50),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            "${song.imageUrl}",
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText(
                            "Author: ${song.author}",
                            textStyle: GoogleFonts.courgette(
                                fontSize: 35, color: Colors.white),
                          ),
                          FadeAnimatedText(
                            "Title: ${song.title}",
                            textStyle: GoogleFonts.courgette(
                                fontSize: 35, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Description",
                        style: GoogleFonts.amiri(
                            fontSize: 25, decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                Text("${song.description}")
              ],
            ),
          )
        ],
      ),
    );
  }
}
