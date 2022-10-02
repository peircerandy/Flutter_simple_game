import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';

import 'components/player.dart';

class SimpleGame extends FlameGame {
  static final Vector2 playerSize = Vector2(54, 54);

  @override
  Future<void> onLoad() async {
    await Flame.images.load('game_assets.png');
    final player = Player()
    ..size = playerSize
    ..position = Vector2(54, 400);

    final world = World()
      ..add(player);
    add(world);

    final camera = CameraComponent(world: world)
      ..viewfinder.visibleGameSize =
      Vector2(108 * 2, 222 * 2)
      ..viewfinder.position = Vector2(108, 0)
      ..viewfinder.anchor = Anchor.topCenter;
    add(camera);
  }
}

Sprite GameSprite(double x, double y, double width, double height) {
  return Sprite(
    Flame.images.fromCache('game_assets.png'),
    srcPosition: Vector2(x, y),
    srcSize: Vector2(width, height),
  );
}