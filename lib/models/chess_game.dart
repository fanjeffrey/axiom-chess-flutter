class ChessGame {
  final Player hostPlayer = Player(false, 'player1');
  final Player guestPlayer = Player(true, 'player2');
  final List<Move> moves = <Move>[];
  final List<ChessPiece> redChessPieces = <ChessPiece>[];
  final List<ChessPiece> blackChessPieces = <ChessPiece>[];

  ChessGame() {
    initPieces(redChessPieces);
    initPieces(blackChessPieces);
  }

  initPieces(List<ChessPiece> chessPieces) {
    chessPieces.addAll([
      GeneralPiece(),
      AdvisorPiece(),
      AdvisorPiece(),
      ElephantPiece(),
      ElephantPiece(),
      HorsePiece(),
      HorsePiece(),
      ChariotPiece(),
      ChariotPiece(),
      CannonPiece(),
      CannonPiece(),
      SoldierPiece(),
      SoldierPiece(),
      SoldierPiece(),
      SoldierPiece(),
      SoldierPiece()
    ]);
  }
}

class Player {
  final bool takingRed;
  final String displayName;

  Player(this.takingRed, this.displayName);
}

class Move {}

abstract class ChessPiece {
  String name;
}

class GeneralPiece extends ChessPiece {
  static const String Name = 'General';

  GeneralPiece() {
    name = Name;
  }
}

class AdvisorPiece extends ChessPiece {
  static const String Name = 'Advisor';

  AdvisorPiece() {
    name = Name;
  }
}

class ElephantPiece extends ChessPiece {
  static const String Name = 'Elephant';

  ElephantPiece() {
    name = Name;
  }
}

class HorsePiece extends ChessPiece {
  static const String Name = 'Horse';

  HorsePiece() {
    name = Name;
  }
}

class ChariotPiece extends ChessPiece {
  static const String Name = 'Chariot';

  ChariotPiece() {
    name = Name;
  }
}

class CannonPiece extends ChessPiece {
  static const String Name = 'Cannon';

  CannonPiece() {
    name = Name;
  }
}

class SoldierPiece extends ChessPiece {
  static const String Name = 'Soldier';
  SoldierPiece() {
    name = Name;
  }
}
