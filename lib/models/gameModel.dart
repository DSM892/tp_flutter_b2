class Game {
  final String imagePath;
  final String name;
  final String description;
  final double price;
  bool isFavourite = false;

  Game({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });

  void toggleIsFavourite() {
    isFavourite = !(isFavourite);
    print(isFavourite);
  }
}
