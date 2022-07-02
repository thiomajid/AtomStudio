import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/utility/clips.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DiscoveryHeader extends StatelessWidget {
  const DiscoveryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                "assets/lottie/starfall.json",
              ),
              const Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 25)),
              Text(
                "Discover new wonders",
                style: GoogleFonts.courgette(fontSize: 35, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
