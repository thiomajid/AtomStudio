import 'package:atom_studio/pages/playlist/widgets/playlist_page_header.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PlaylistPageHeader(),
          ],
        ),
      ),
    );
  }
}
