import 'package:flutter/material.dart';
import 'package:tp_flutter_b2/components/gameComponent.dart';
import 'package:tp_flutter_b2/gameList.dart';

class GameListScreen extends StatefulWidget {
  const GameListScreen({super.key});

  @override
  State<GameListScreen> createState() => _GameListScreenState();
}

class _GameListScreenState extends State<GameListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 350,
            child: Column(
              spacing: 60,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  child: GameComponent(game: gameList[0]),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  child: GameComponent(game: gameList[1]),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  child: GameComponent(game: gameList[2]),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  child: GameComponent(game: gameList[3]),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  child: GameComponent(game: gameList[4]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
