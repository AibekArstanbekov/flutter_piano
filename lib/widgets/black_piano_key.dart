import 'package:flutter/material.dart';
import 'package:flutter_pianino/styles/app_styles.dart';

class BlackPianoKey extends StatelessWidget {
  const BlackPianoKey({
    super.key,
    required this.left,
    required this.text,
    this.onTap,
  });
  final double left;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      child: InkWell(
        onTap: () => onTap,
        child: Container(
          width: 35.61,
          height: 120.64,
          decoration: BoxDecoration(
            color: AppStyles.pianoKeyColorBlack,
            border: Border.all(
              color: AppStyles.borderColorPianoKeyBlack,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  text,
                  style: AppStyles.pianoFtextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
