import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pianino/styles/app_styles.dart';
import 'package:flutter_pianino/widgets/black_piano_key.dart';
import 'package:flutter_pianino/widgets/white_piano_key.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer nota = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.appBarColor,
        title: Text(
          "My Piano App",
          style: AppStyles.appBartextStyle,
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(
                      AssetSource('do.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(
                      AssetSource('re.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(
                      AssetSource('mi.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(
                      AssetSource('fa.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(
                      AssetSource('so.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(
                      AssetSource('la.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f7',
                    onPressed: () => nota.play(
                      AssetSource('si.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(
                      AssetSource('do.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(
                      AssetSource('re.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(
                      AssetSource('mi.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(
                      AssetSource('fa.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(
                      AssetSource('so.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(
                      AssetSource('la.wav'),
                    ),
                  ),
                ],
              ),
              BlackPianoKey(
                left: 50,
                text: 'f1',
                onTap: () => nota.play(
                  AssetSource('do.wav'),
                ),
              ),
              const BlackPianoKey(
                left: 115,
                text: 'f2',
              ),
              const BlackPianoKey(
                left: 243,
                text: 'f3',
              ),
              const BlackPianoKey(
                left: 308,
                text: 'f4',
              ),
              const BlackPianoKey(
                left: 373,
                text: 'f5',
              ),
              const BlackPianoKey(
                left: 455,
                text: 'f6',
              ),
              const BlackPianoKey(
                left: 520,
                text: 'f7',
              ),
              const BlackPianoKey(
                left: 668,
                text: 'f1',
              ),
              const BlackPianoKey(
                left: 740,
                text: 'f2',
              ),
              const BlackPianoKey(
                left: 815,
                text: 'f3',
              ),
            ],
          )
        ],
      ),
    );
  }
}
