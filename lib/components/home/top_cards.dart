import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/utility/atom_colors.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 920,
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 20,
        children: [
          //? Songs card
          Card(
            elevation: 12,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Songs",
                      style: GoogleFonts.courgette(
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Text(
                  "Your style, Your songs.\nListen to your favorites songs.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Button(
                  style: ButtonStyle(
                    shape: ButtonState.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    backgroundColor: ButtonState.all(AtomColors.gunmetal),
                    elevation: ButtonState.all(8),
                    padding: ButtonState.all(
                      EdgeInsetsGeometry.lerp(const EdgeInsets.all(12),
                          const EdgeInsets.all(25), 0.2),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Browse songs",
                        style: GoogleFonts.courgette(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      ),
                      const Icon(
                        FluentIcons.music_in_collection,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/songs");
                  },
                ),
              ],
            ),
          ),

          //? Videos card
          Card(
            elevation: 12,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Videos",
                      style: GoogleFonts.courgette(
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Text(
                  "Review important moments of your life\nor your favorites shows.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Button(
                  style: ButtonStyle(
                    shape: ButtonState.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    backgroundColor: ButtonState.all(AtomColors.gunmetal),
                    elevation: ButtonState.all(8),
                    padding: ButtonState.all(
                      EdgeInsetsGeometry.lerp(const EdgeInsets.all(12),
                          const EdgeInsets.all(25), 0.2),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Watch videos",
                        style: GoogleFonts.courgette(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      ),
                      const Icon(
                        FluentIcons.video,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/videos");
                  },
                ),
              ],
            ),
          ),

          //? Streaming || store part
          Card(
            elevation: 12,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Discover",
                      style: GoogleFonts.courgette(
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Text(
                  "The right way to discover new wonders.\nIt's one click away.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Button(
                  style: ButtonStyle(
                    shape: ButtonState.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    backgroundColor: ButtonState.all(AtomColors.gunmetal),
                    elevation: ButtonState.all(8),
                    padding: ButtonState.all(
                      EdgeInsetsGeometry.lerp(const EdgeInsets.all(12),
                          const EdgeInsets.all(25), 0.2),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Discovery section",
                        style: GoogleFonts.courgette(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      ),
                      const Icon(
                        FluentIcons.globe2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/discover");
                  },
                ),
              ],
            ),
          ),

          //? Parameters
          Card(
            elevation: 12,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tune",
                      style: GoogleFonts.courgette(
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Text(
                  "Pimp AS to fit your expactation.\nMany options are available.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                ),
                Button(
                  style: ButtonStyle(
                    shape: ButtonState.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    backgroundColor: ButtonState.all(AtomColors.gunmetal),
                    elevation: ButtonState.all(8),
                    padding: ButtonState.all(
                      EdgeInsetsGeometry.lerp(const EdgeInsets.all(12),
                          const EdgeInsets.all(25), 0.2),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Tune AS",
                        style: GoogleFonts.courgette(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      ),
                      const Icon(
                        FluentIcons.settings,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
