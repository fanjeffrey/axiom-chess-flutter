class ChessGame {
  final Player player1 = Player(false, 'player1');
  final Player player2 = Player(true, 'player2');
  final List<Move> moves = <Move>[];
}

class Player {
  final bool takingRed;
  final String displayName;
  final List<ChessPiece> chessPieces = <ChessPiece>[];

  Player(this.takingRed, this.displayName) {
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

class Move {}

abstract class ChessPiece {}

class GeneralPiece extends ChessPiece {}

class AdvisorPiece extends ChessPiece {}

class ElephantPiece extends ChessPiece {}

class HorsePiece extends ChessPiece {}

class ChariotPiece extends ChessPiece {}

class CannonPiece extends ChessPiece {}

class SoldierPiece extends ChessPiece {}