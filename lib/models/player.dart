class Player {
  String displayName;
  bool takingRed;

  Player(this.displayName);

  void takeRed() {
    takingRed = true;
  }

  void takeBlack() {
    takingRed = false;
  }
}
