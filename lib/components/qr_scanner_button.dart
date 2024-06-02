import 'package:flutter/material.dart';

class QRScannerButton extends StatelessWidget {
  final VoidCallback onPressed;

  QRScannerButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        child: Icon(
          Icons.replay,
          size: 60,
          color: Colors.white,
        ),
      ),
    );
  }
}
