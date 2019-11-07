import 'position.dart';

abstract class ChessPiece {
  String name;
  Position position;

  ChessPiece(this.name, this.position);
}

class GeneralPiece extends ChessPiece {
  static const String Name = 'General';
  static var defaultInitialPosition = Position(rank: 1, file: 5);

  GeneralPiece(Position p) : super(Name, p);
}

class AdvisorPiece extends ChessPiece {
  static const String Name = 'Advisor';
  static var defaultInitialPositionRight = Position(rank: 1, file: 4);
  static var defaultInitialPositonLeft = Position(rank: 1, file: 6);

  AdvisorPiece(Position p) : super(Name, p);
}

class ElephantPiece extends ChessPiece {
  static const String Name = 'Elephant';
  static var defaultInitialPositionRight = Position(rank: 1, file: 3);
  static var defaultInitialPositionLeft = Position(rank: 1, file: 7);

  ElephantPiece(Position p) : super(Name, p);
}

class HorsePiece extends ChessPiece {
  static const String Name = 'Horse';
  static var defaultInitialPositionRight = Position(rank: 1, file: 2);
  static var defaultInitialPositionLeft = Position(rank: 1, file: 8);

  HorsePiece(Position p) : super(Name, p);
}

class ChariotPiece extends ChessPiece {
  static const String Name = 'Chariot';
  static var defaultInitialPositionRight = Position(rank: 1, file: 1);
  static var defaultInitialPositionLeft = Position(rank: 1, file: 9);

  ChariotPiece(Position p) : super(Name, p);
}

class CannonPiece extends ChessPiece {
  static const String Name = 'Cannon';
  static var defaultInitialPositionRight = Position(rank: 3, file: 2);
  static var defaultInitialPositionLeft = Position(rank: 3, file: 8);

  CannonPiece(Position p) : super(Name, p);
}

class SoldierPiece extends ChessPiece {
  static const String Name = 'Soldier';
  static var defaultInitialPosition1 = Position(rank: 4, file: 1);
  static var defaultInitialPosition2 = Position(rank: 4, file: 3);
  static var defaultInitialPosition3 = Position(rank: 4, file: 5);
  static var defaultInitialPosition4 = Position(rank: 4, file: 7);
  static var defaultInitialPosition5 = Position(rank: 4, file: 9);

  SoldierPiece(Position p) : super(Name, p);
}
