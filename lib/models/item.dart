class Item {
  final String title;
  bool isDone ;

  Item(this.title, this.isDone);

  void toggleStatus() {
    isDone = !isDone;
  }
}
