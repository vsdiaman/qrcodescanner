import 'package:flutter/material.dart';

class QRScannerButton extends StatelessWidget {
  final VoidCallback resetScanner;

  QRScannerButton({
    required this.resetScanner,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: resetScanner,
        child: Icon(
          Icons.replay,
          size: 60,
          color: Colors.white,
        ),
      ),
    );
  }
}
