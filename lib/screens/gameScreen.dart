import 'package:flutter/material.dart';
import 'package:tp_flutter_b2/components/gameComponent.dart';
import 'package:tp_flutter_b2/models/gameModel.dart';
import 'package:tp_flutter_b2/screens/gameListScreen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key, required this.game});

  final Game game;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  void _openGameListScreen(BuildContext context) {
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GameListScreen()),
    );
  }

  void _displaySnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                GameComponent(game: widget.game),
                FilledButton(
                  onPressed: () {
                    widget.game.toggleIsFavourite();
                    _openGameListScreen(context);
                    (widget.game.isFavourite)
                        ? _displaySnackBar(
                            widget.game.name +
                                ' ajouté aux '
                                    'favoris',
                          )
                        : _displaySnackBar(
                            widget.game.name +
                                ' supprimé des '
                                    'favoris',
                          );
                  },
                  child: (widget.game.isFavourite)
                      ? Text('Supprimer des favoris')
                      : Text('Ajouter aux favoris'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
