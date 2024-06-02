import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'result_screen.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

const bgColor = Color(0xfffafafa);

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  bool isScanCompleted = false;

  void closeScreen() {
    setState(() {
      isScanCompleted = false; // Reinicia o estado de scan completado
    });
  }

  void _onDetect(BarcodeCapture barcode) {
    final String code = barcode.barcodes.first.rawValue ?? "---";
    if (!isScanCompleted) {
      setState(() {
        isScanCompleted = true; // Marca o scan como completo
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ResultScreen(result: code, onClose: closeScreen),
        ),
      );
    }
  }

  void reloadScanner() {
    setState(() {
      isScanCompleted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'QR Scanner',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Place the QR code in the area',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Scanning will be started automatically',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                MobileScanner(
                  onDetect: _onDetect,
                ),
                QRScannerOverlay(
                  borderColor: Color.fromARGB(255, 16, 196, 196),
                  overlayColor: bgColor,
                  scanAreaHeight: 300,
                  scanAreaWidth: 300,
                ),
                if (isScanCompleted)
                  Center(
                    child: GestureDetector(
                      onTap: reloadScanner,
                      child: Icon(
                        Icons.replay,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child: Text(
              'Developed by Huolong Labs',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
