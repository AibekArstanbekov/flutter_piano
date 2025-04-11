import 'package:flutter/material.dart';
import 'package:flutter_pianino/styles/app_styles.dart';

class WhitePianoKey extends StatelessWidget {
  const WhitePianoKey({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.cyanAccent,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        minimumSize: const Size(
          17.40,
          180.93,
        ),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Center(
            child: Text(
              text,
              style: AppStyles.pianoFtextStyle.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*
Container(
      width: 63.40,
      height: 260.93,
      decoration: BoxDecoration(
        color: AppStyles.pianoKeyColor,
        border: Border.all(
          color: AppStyles.borderColorPianoKey,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Text(
              "f1",
              style: AppStyles.pianoFtextStyle.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
*/ 
