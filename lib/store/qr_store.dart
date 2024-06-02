import 'package:mobx/mobx.dart';

part 'qr_store.g.dart';

class QRStore = _QRStore with _$QRStore;

abstract class _QRStore with Store {
  @observable
  String qrCode = '';

  @observable
  bool isScanCompleted = false;

  @action
  void setQRCode(String code) {
    qrCode = code;
    isScanCompleted = true;
  }

  @action
  void resetScanner() {
    isScanCompleted = false;
  }
}
