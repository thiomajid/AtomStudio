import 'package:atom_studio/pages/discovery/widgets/editors_choice.dart';
import 'package:atom_studio/pages/discovery/widgets/header.dart';
import 'package:atom_studio/utility/atom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AtomColors.gunmetal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DiscoveryHeader(),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                ),
                Text(
                  "Editors Choice",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 28, decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const EditorsChoice(),
            const Padding(padding: EdgeInsets.all(30)),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
                ),
                Text(
                  "New trend",
                  style: GoogleFonts.courgette(
                    textStyle: const TextStyle(
                        fontSize: 28, decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const EditorsChoice()
          ],
        ),
      ),
    );
  }
}
