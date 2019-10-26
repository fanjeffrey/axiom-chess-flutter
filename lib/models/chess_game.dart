import 'player.dart';

class ChessGame {
  final Player hostPlayer;
  final Player guestPlayer;
  final List<Move> moves = <Move>[];
  final List<ChessPiece> redChessPieces = <ChessPiece>[];
  final List<ChessPiece> blackChessPieces = <ChessPiece>[];

  ChessGame(this.hostPlayer, this.guestPlayer) {
    initPieces(redChessPieces);
    initPieces(blackChessPieces);
    hostPlayer.takeBlack();
    guestPlayer.takeRed();
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
