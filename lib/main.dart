import 'package:atom_studio/pages/discovery/discovery_page.dart';
import 'package:atom_studio/pages/favorites/favorites_page.dart';
import 'package:atom_studio/pages/home/home_page.dart';
import 'package:atom_studio/pages/playlist/playlist_page.dart';
import 'package:atom_studio/pages/settings/settings_page.dart';
import 'package:atom_studio/pages/songs/songs_page.dart';
import 'package:atom_studio/pages/videos/videos_page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _animation = Tween<double>(begin: 1, end: 0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/songs": (context) => const SongsPage(),
        "/videos": (context) => const VideosPage(),
        "/favorites": (context) => const FavoritesPage(),
        "/discover": (context) => const DiscoveryPage(),
        "/playlist": (context) => const PlayListPage(),
        "/settings": (context) => const SettingsPage()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.blue,
        fontFamily: GoogleFonts.amiri().fontFamily,
        iconTheme: const IconThemeData(size: 24),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        accentColor: Colors.blue,
        fontFamily: GoogleFonts.amiri().fontFamily,
        iconTheme: const IconThemeData(size: 24),
      ),
      home: NavigationView(
        pane: NavigationPane(
          selected: _pageIndex,
          displayMode: PaneDisplayMode.auto,
          onChanged: (index) => setState(() {
            _pageIndex = index;
          }),
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.home),
              title: const Text("Home"),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.music_in_collection),
              title: const Text("Songs"),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.video),
              title: const Text("Videos"),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.favorite_list),
              title: const Text("Favorites"),
            ),
            PaneItem(
                icon: const Icon(FluentIcons.globe2),
                title: const Text("Discover")),
            PaneItem(
              icon: const Icon(FluentIcons.playlist_music),
              title: const Text("Playlists"),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.settings),
              title: const Text("Settings"),
            )
          ],
        ),
        content: DrillInPageTransition(
          animation: _animation,
          child: NavigationBody(
            index: _pageIndex,
            children: const [
              HomePage(),
              SongsPage(),
              VideosPage(),
              FavoritesPage(),
              DiscoveryPage(),
              PlayListPage(),
              SettingsPage()
            ],
          ),
        ),
      ),
    );
  }
}
