import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'mobile_game_game.dart';

void main() {
  final game = SimpleGame();
  runApp(GameWidget(game: game));
}