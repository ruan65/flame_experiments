import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class OverlayGame extends Game with HasWidgetsOverlay, TapDetector {
  bool isPaused = false;

  @override
  void update(double dt) {}

  @override
  void render(Canvas canvas) {
    canvas.drawRect(const Rect.fromLTWH(100, 100, 100, 100),
        Paint()..color = BasicPalette.white.color);
  }

  @override
  void onTap() {
    if (isPaused) {
      removeWidgetOverlay('PauseMenu');
      isPaused = false;
    } else {
      addWidgetOverlay(
          'PauseMenu',
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: const Color(0xFF555555),
              child: const Center(
                  child: const Text(
                'Paused',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  decoration: TextDecoration.none,
                ),
              )),
            ),
          ));
      isPaused = true;
    }
  }
}
