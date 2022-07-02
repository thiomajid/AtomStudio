import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
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
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset(
                    "assets/lottie/favorites.json",
                    repeat: false,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Text(
                  "F",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 55, fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  "avorite",
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
