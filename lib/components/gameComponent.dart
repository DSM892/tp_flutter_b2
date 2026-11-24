import 'package:flutter/material.dart';
import 'package:tp_flutter_b2/models/gameModel.dart';
import 'package:tp_flutter_b2/screens/gameScreen.dart';

class GameComponent extends StatefulWidget {
  const GameComponent({super.key, required this.game});

  final Game game;

  @override
  State<GameComponent> createState() => _GameComponentState();
}

class _GameComponentState extends State<GameComponent> {
  void _openScreen(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _openScreen(context, GameScreen(game: widget.game));
      },
      child: Column(
        spacing: 10,
        children: [
          Image(image: AssetImage(widget.game.imagePath)),
          Text(
            widget.game.name,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),
          Container(
            width: 315,
            child: Text(
              widget.game.description,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Text(
            widget.game.price.toString() + ' €',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (widget.game.isFavourite) Icon(Icons.favorite, color: Colors.red),
        ],
      ),
    );
  }
}
