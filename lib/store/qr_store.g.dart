// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QRStore on _QRStore, Store {
  late final _$qrCodeAtom = Atom(name: '_QRStore.qrCode', context: context);

  @override
  String get qrCode {
    _$qrCodeAtom.reportRead();
    return super.qrCode;
  }

  @override
  set qrCode(String value) {
    _$qrCodeAtom.reportWrite(value, super.qrCode, () {
      super.qrCode = value;
    });
  }

  late final _$isScanCompletedAtom =
      Atom(name: '_QRStore.isScanCompleted', context: context);

  @override
  bool get isScanCompleted {
    _$isScanCompletedAtom.reportRead();
    return super.isScanCompleted;
  }

  @override
  set isScanCompleted(bool value) {
    _$isScanCompletedAtom.reportWrite(value, super.isScanCompleted, () {
      super.isScanCompleted = value;
    });
  }

  late final _$_QRStoreActionController =
      ActionController(name: '_QRStore', context: context);

  @override
  void setQRCode(String code) {
    final _$actionInfo =
        _$_QRStoreActionController.startAction(name: '_QRStore.setQRCode');
    try {
      return super.setQRCode(code);
    } finally {
      _$_QRStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetScanner() {
    final _$actionInfo =
        _$_QRStoreActionController.startAction(name: '_QRStore.resetScanner');
    try {
      return super.resetScanner();
    } finally {
      _$_QRStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reloadScanner() {
    final _$actionInfo =
        _$_QRStoreActionController.startAction(name: '_QRStore.reloadScanner');
    try {
      return super.reloadScanner();
    } finally {
      _$_QRStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
qrCode: ${qrCode},
isScanCompleted: ${isScanCompleted}
    ''';
  }
}
