import 'package:flutter/material.dart';

class GeneralParameters extends StatelessWidget {
  const GeneralParameters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: const [
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
        ClipRRect(
          child: Card(
            child: Text("fd"),
          ),
        ),
      ],
    );
  }
}
