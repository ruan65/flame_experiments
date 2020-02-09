import 'package:flame/components/component.dart';
import 'package:flame/game/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';

class Fly extends SpriteComponent {

  // creates a component that renders the crate.png sprite, with size 16 x 16
  Fly() : super.fromSprite(56.0, 56.0, Sprite('png/agile-fly-1.png'));

  @override
  void resize(Size size) {
    // we don't need to set the x and y in the constructor, we can set then here
    this.x = (size.width - this.width) / 2;
    this.y = (size.height - this.height) / 2;
  }
}

class Game1 extends BaseGame {
  Game1() {
    add(Fly()); // this will call resize the first time as well
  }
}
