import 'package:flutter_chess/models/chess_board.dart';
import 'package:flutter_chess/models/chess_game.dart';
import 'package:flutter_chess/models/chess_piece.dart';
import 'package:flutter_chess/models/player.dart';
import 'package:flutter_chess/models/position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('A new chess game should has initial state and settings.', () {
    var player1 = Player('player1');
    var player2 = Player('player2');
    var game = ChessGame(player1, player2);
    verifyChessBoard(game.chessBoard);
    verifyChessPiecesOnChessBoard(game.chessBoard);
    verifyChessPieces(game.redChessPieces);
    verifyChessPieces(game.blackChessPieces);
    expect(game.hostPlayer.takingRed, false);
    expect(player1.takingRed, game.hostPlayer.takingRed);
    expect(game.guestPlayer.takingRed, true);
    expect(player2.takingRed, game.guestPlayer.takingRed);
    expect(game.moves.length, 0);
  });
}

void verifyChessBoard(ChessBoard chessBoard) {
  expect(chessBoard != null, true);
  expect(chessBoard.positions.length, 90);
  expect(chessBoard.positions[0], Position(rank: 1, file: 1));
  expect(chessBoard.positions[8], Position(rank: 1, file: 9));
  expect(chessBoard.positions[9], Position(rank: 2, file: 1));
  expect(chessBoard.positions[17], Position(rank: 2, file: 9));
  expect(chessBoard.positions[18], Position(rank: 3, file: 1));
  expect(chessBoard.positions[26], Position(rank: 3, file: 9));
  expect(chessBoard.positions[81], Position(rank: 10, file: 1));
  expect(chessBoard.positions[89], Position(rank: 10, file: 9));
}

void verifyChessPiecesOnChessBoard(ChessBoard chessBoard) {
  var chessPieces = chessBoard.positions.where((p) {
    return p.chessPiece != null;
  });
  expect(chessPieces.length, 32);
  expect(chessBoard.positions[0].chessPiece.name, ChariotPiece.Name);
  expect(chessBoard.positions[1].chessPiece.name, HorsePiece.Name);
  expect(chessBoard.positions[2].chessPiece.name, ElephantPiece.Name);
  expect(chessBoard.positions[3].chessPiece.name, AdvisorPiece.Name);
  expect(chessBoard.positions[4].chessPiece.name, GeneralPiece.Name);
  expect(chessBoard.positions[5].chessPiece.name, AdvisorPiece.Name);
  expect(chessBoard.positions[6].chessPiece.name, ElephantPiece.Name);
  expect(chessBoard.positions[7].chessPiece.name, HorsePiece.Name);
  expect(chessBoard.positions[8].chessPiece.name, ChariotPiece.Name);

  expect(chessBoard.positions[19].chessPiece.name, CannonPiece.Name);
  expect(chessBoard.positions[25].chessPiece.name, CannonPiece.Name);

  expect(chessBoard.positions[27].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[29].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[31].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[33].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[35].chessPiece.name, SoldierPiece.Name);

  expect(chessBoard.positions[54].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[56].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[58].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[60].chessPiece.name, SoldierPiece.Name);
  expect(chessBoard.positions[62].chessPiece.name, SoldierPiece.Name);

  expect(chessBoard.positions[64].chessPiece.name, CannonPiece.Name);
  expect(chessBoard.positions[70].chessPiece.name, CannonPiece.Name);

  expect(chessBoard.positions[81].chessPiece.name, ChariotPiece.Name);
  expect(chessBoard.positions[82].chessPiece.name, HorsePiece.Name);
  expect(chessBoard.positions[83].chessPiece.name, ElephantPiece.Name);
  expect(chessBoard.positions[84].chessPiece.name, AdvisorPiece.Name);
  expect(chessBoard.positions[85].chessPiece.name, GeneralPiece.Name);
  expect(chessBoard.positions[86].chessPiece.name, AdvisorPiece.Name);
  expect(chessBoard.positions[87].chessPiece.name, ElephantPiece.Name);
  expect(chessBoard.positions[88].chessPiece.name, HorsePiece.Name);
  expect(chessBoard.positions[89].chessPiece.name, ChariotPiece.Name);

  expect(chessBoard.positions[10].chessPiece, null);
  expect(chessBoard.positions[80].chessPiece, null);
}

void verifyChessPieces(List<ChessPiece> chessPieces) {
  var generalPieces = chessPieces.where((p) {
    return p.name == GeneralPiece.Name;
  }).toList();
  expect(generalPieces.length, 1);
  expect(generalPieces.first.position, GeneralPiece.defaultInitialPosition);

  var advisorPieces = chessPieces.where((p) {
    return p.name == AdvisorPiece.Name;
  }).toList();
  expect(advisorPieces.length, 2);
  expect(advisorPieces[0].position, AdvisorPiece.defaultInitialPositionRight);
  expect(advisorPieces[1].position, AdvisorPiece.defaultInitialPositonLeft);

  var elephantPieces = chessPieces.where((p) {
    return p.name == ElephantPiece.Name;
  }).toList();
  expect(elephantPieces.length, 2);
  expect(elephantPieces[0].position, ElephantPiece.defaultInitialPositionRight);
  expect(elephantPieces[1].position, ElephantPiece.defaultInitialPositionLeft);

  var horsePieces = chessPieces.where((p) {
    return p.name == HorsePiece.Name;
  }).toList();
  expect(horsePieces.length, 2);
  expect(horsePieces[0].position, HorsePiece.defaultInitialPositionRight);
  expect(horsePieces[1].position, HorsePiece.defaultInitialPositionLeft);

  var chariotPieces = chessPieces.where((p) {
    return p.name == ChariotPiece.Name;
  }).toList();
  expect(chariotPieces.length, 2);
  expect(chariotPieces[0].position, ChariotPiece.defaultInitialPositionRight);
  expect(chariotPieces[1].position, ChariotPiece.defaultInitialPositionLeft);

  var cannonPieces = chessPieces.where((p) {
    return p.name == CannonPiece.Name;
  }).toList();
  expect(cannonPieces.length, 2);
  expect(cannonPieces[0].position, CannonPiece.defaultInitialPositionRight);
  expect(cannonPieces[1].position, CannonPiece.defaultInitialPositionLeft);

  var soldierPieces = chessPieces.where((p) {
    return p.name == SoldierPiece.Name;
  }).toList();
  expect(soldierPieces.length, 5);
  expect(soldierPieces[0].position, SoldierPiece.defaultInitialPosition1);
  expect(soldierPieces[1].position, SoldierPiece.defaultInitialPosition2);
  expect(soldierPieces[2].position, SoldierPiece.defaultInitialPosition3);
  expect(soldierPieces[3].position, SoldierPiece.defaultInitialPosition4);
  expect(soldierPieces[4].position, SoldierPiece.defaultInitialPosition5);
}
