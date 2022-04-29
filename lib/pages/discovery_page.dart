import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/components/discovery/editors_choice.dart';
import 'package:music_player/components/discovery/header.dart';
import 'package:music_player/utility/atom_colors.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

//TODO: use async programming to ensure songs.json reading always done.

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DiscoveryHeader(),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                ),
                Text(
                  "Editors Choice",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 28, decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const EditorsChoice(),
            const Padding(padding: EdgeInsets.all(30)),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
                ),
                Text(
                  "New trend",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 28, decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const EditorsChoice()
          ],
        ),
      ),
    );
  }
}
