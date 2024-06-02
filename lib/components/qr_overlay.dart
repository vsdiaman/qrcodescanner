import 'package:flutter/material.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

class QROverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return QRScannerOverlay(
      borderColor: Color.fromARGB(255, 16, 196, 196),
      overlayColor: const Color(0xfffafafa),
      scanAreaHeight: 300,
      scanAreaWidth: 300,
    );
  }
}
