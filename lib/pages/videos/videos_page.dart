import 'package:atom_studio/pages/videos/widgets/video_page_header.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            VideoPageHeader(),
          ],
        ),
      ),
    );
  }
}
