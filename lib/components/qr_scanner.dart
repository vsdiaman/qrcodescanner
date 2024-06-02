import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import '../store/qr_store.dart';
import 'qr_overlay.dart';
import 'qr_scanner_button.dart';

class QRScannerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final qrStore = Provider.of<QRStore>(context);

    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          MobileScanner(
            onDetect: (barcode) {
              final String code = barcode.barcodes.first.rawValue ?? "---";
              if (!qrStore.isScanCompleted) {
                qrStore.setQRCode(code);
                Navigator.pushNamed(context, '/result');
              }
            },
          ),
          QROverlay(),
          if (qrStore.isScanCompleted)
            QRScannerButton(
              onPressed: qrStore.resetScanner,
            ),
        ],
      ),
    );
  }
}
