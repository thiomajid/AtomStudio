import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music_player/utility/atom_colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Lottie.asset(
                "assets/lottie/settings.json",
                height: 300,
                alignment: Alignment.bottomCenter,
                repeat: false,
              ),
              Text(
                "S",
                style: GoogleFonts.courgette(
                  textStyle: const TextStyle(
                      fontSize: 55, fontStyle: FontStyle.italic),
                ),
              ),
              Text(
                "ettings",
                style: GoogleFonts.courgette(
                  textStyle: const TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
