import 'dart:developer';

import 'package:flutter/material.dart';

class AudioParameters extends StatelessWidget {
  const AudioParameters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Slider(
                  value: 0,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    log(value.toString());
                  })
            ],
          ),
        ],
      ),
    );
  }
}
