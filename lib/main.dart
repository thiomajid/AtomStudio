import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/pages/favorites_page.dart';
import 'package:music_player/pages/home_page.dart';
import 'package:music_player/pages/playlist_page.dart';
import 'package:music_player/pages/settings_page.dart';
import 'package:music_player/pages/songs_page.dart';
import 'package:music_player/pages/videos_page.dart';
import 'package:music_player/services/page_index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final IndexHandler index = IndexHandler();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      home: StreamBuilder<int>(
        stream: index.currentIndex,
        builder: (context, snapshot) {
          return NavigationView(
            pane: NavigationPane(
              selected: snapshot.data,
              displayMode: PaneDisplayMode.auto,
              onChanged: (newIndex) {
                setState(
                  () {
                    index.newIndex.add(newIndex);
                  },
                );
              },
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
                  icon: const Icon(FluentIcons.playlist_music),
                  title: const Text("Playlists"),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.settings),
                  title: const Text("Settings"),
                )
              ],
            ),
            content: NavigationBody(
              index: snapshot.hasData ? snapshot.data! : 0,
              children: const [
                HomePage(),
                SongsPage(),
                VideosPage(),
                FavoritesPage(),
                PlayListPage(),
                SettingsPage()
              ],
            ),
          );
        },
      ),
    );
  }
}
