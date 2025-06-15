import 'package:flutter/material.dart';

final class LoadingOverlay {
  LoadingOverlay._();

  static OverlayEntry? _overlayEntry;

  static bool get isOverlayShown => _overlayEntry != null;

  static void show(BuildContext context, {String? message}) {
    if (_overlayEntry != null) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            // Modal barrier to prevent user interaction
            ModalBarrier(
              color: Colors.black.withValues(alpha: 0.35),
              dismissible: false,
            ),
            // Loading content
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const LinearProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(
                    message ?? 'Loading...',
                    // style: context.typography.bodyMedium.copyWith(
                    //   color: context.colorScheme.accentColors.blue50,
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    final entry = _overlayEntry;
    if (entry != null) {
      Overlay.of(context).insert(entry);
    }
  }

  static void hide() {
    if (_overlayEntry == null) {
      return;
    }
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
