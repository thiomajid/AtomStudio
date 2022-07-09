import 'package:atom_studio/utility/atom_colors.dart';
import 'package:atom_studio/utility/models/home_card_model.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCards extends StatelessWidget {
  HomeCards({Key? key}) : super(key: key);

  final _cards = [
    HomeCardModel(
      title: "Songs",
      description: "Your style, Your songs.\nListen to your favorites songs.",
      buttonText: "Browse songs",
      pageRoute: "/songs",
      icon: FluentIcons.music_in_collection,
    ),
    HomeCardModel(
      title: "Videos",
      description:
          "Review important moments of your life\nor your favorites shows.",
      buttonText: "Watch videos",
      pageRoute: "/videos",
      icon: FluentIcons.video,
    ),
    HomeCardModel(
      title: "Discover",
      description:
          "The right way to discover new wonders.\nIt's one click away.",
      buttonText: "Discovery section",
      pageRoute: "/discover",
      icon: FluentIcons.globe2,
    ),
    HomeCardModel(
      title: "Tune",
      description:
          "Pimp AS to fit your expactation.\nMany options are available.",
      buttonText: "Tune AS",
      pageRoute: "/settings",
      icon: FluentIcons.settings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int columnCounts = 4;

    return SizedBox(
        width: 920,
        child: AnimationLimiter(
          child: GridView.count(
            crossAxisCount: columnCounts,
            crossAxisSpacing: 10,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: List.generate(
              _cards.length,
              (index) => AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: columnCounts,
                duration: const Duration(
                  milliseconds: 2000,
                ),
                child: ScaleAnimation(
                  duration: const Duration(
                    milliseconds: 900,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: FadeInAnimation(
                    child: Card(
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
                                _cards[index].title,
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
                            _cards[index].description,
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
                              backgroundColor:
                                  ButtonState.all(AtomColors.gunmetal),
                              elevation: ButtonState.all(8),
                              padding: ButtonState.all(
                                EdgeInsetsGeometry.lerp(
                                    const EdgeInsets.all(12),
                                    const EdgeInsets.all(25),
                                    0.2),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  _cards[index].buttonText,
                                  style: GoogleFonts.courgette(
                                    textStyle:
                                        const TextStyle(color: Colors.white),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
                                ),
                                Icon(
                                  _cards[index].icon,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, _cards[index].pageRoute);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
