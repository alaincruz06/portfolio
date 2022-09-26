import 'dart:math';

import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/presentation/app/theme/colors.dart';

class BlobAnimatedRandom extends StatefulWidget {
  const BlobAnimatedRandom({super.key});

  @override
  State<BlobAnimatedRandom> createState() => _BlobAnimatedRandomState();
}

class _BlobAnimatedRandomState extends State<BlobAnimatedRandom> {
  final BlobController blobCtrl = BlobController();
  bool amIHovering = true;
  double size = 200;
  int edgesCount = 5;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (hovering) {
        setState(() {
          !amIHovering;
          size = Random().nextDouble() * 250;
          edgesCount = Random().nextInt(20);
        });
      },
      child: Blob.animatedRandom(
        controller: blobCtrl,
        size: 200,
        loop: amIHovering,
        edgesCount: 5,
        minGrowth: 4,
        duration: const Duration(milliseconds: 700),
        styles: BlobStyles(
          color: Colors.green,
          fillType: BlobFillType.fill,
          gradient: const RadialGradient(colors: [
            PortfolioColors.primaryColor,
            PortfolioColors.secondaryColor,
            PortfolioColors.tertiaryColor
          ]).createShader(
            const Rect.fromLTRB(0, 0, 300, 300),
          ),
          strokeWidth: 3,
        ),
      ),
    );
  }
}
