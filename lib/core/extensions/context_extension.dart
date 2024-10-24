import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void mShowSnackBar({
    required String message,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        action: action,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void showLoadingDialog({String title = 'Cargando'}) {
    showDialog(
      barrierDismissible: false,
      context: this,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
