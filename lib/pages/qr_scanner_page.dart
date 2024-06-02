import 'package:flutter/material.dart';
import '../components/qr_scanner.dart';

const bgColor = Color(0xfffafafa);

class QRScannerPage extends StatelessWidget {
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
          QRScannerComponent(),
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
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
