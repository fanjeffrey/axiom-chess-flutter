import 'package:flutter_chess/models/chess_game.dart';
import 'package:flutter_chess/models/player.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('A new chess game should has initial state and settings.', () {
    var player1 = Player('player1');
    var player2 = Player('player2');
    var game = ChessGame(player1, player2);
    verifyChessPieces(game.redChessPieces);
    verifyChessPieces(game.blackChessPieces);
    expect(game.hostPlayer.takingRed, false);
    expect(player1.takingRed, game.hostPlayer.takingRed);
    expect(game.guestPlayer.takingRed, true);
    expect(player2.takingRed, game.guestPlayer.takingRed);
    expect(game.moves.length, 0);
  });
}

void verifyChessPieces(List<ChessPiece> chessPieces) {
  expect(chessPieces.length, 16);
  expect(
      chessPieces
          .where((p) {
            return p.name == GeneralPiece.Name;
          })
          .toList()
          .length,
      1);
  expect(
      chessPieces
          .where((p) {
            return p.name == AdvisorPiece.Name;
          })
          .toList()
          .length,
      2);
  expect(
      chessPieces
          .where((p) {
            return p.name == ElephantPiece.Name;
          })
          .toList()
          .length,
      2);
  expect(
      chessPieces
          .where((p) {
            return p.name == HorsePiece.Name;
          })
          .toList()
          .length,
      2);
  expect(
      chessPieces
          .where((p) {
            return p.name == ChariotPiece.Name;
          })
          .toList()
          .length,
      2);
  expect(
      chessPieces
          .where((p) {
            return p.name == CannonPiece.Name;
          })
          .toList()
          .length,
      2);
  expect(
      chessPieces
          .where((p) {
            return p.name == SoldierPiece.Name;
          })
          .toList()
          .length,
      5);
}
