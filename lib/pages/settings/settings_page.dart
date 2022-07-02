import 'package:atom_studio/pages/settings/widgets/setting_tiles.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Divider(
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: SettingsTiles(),
          ),
        ],
      ),
    );
  }
}
