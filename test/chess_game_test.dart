import 'package:flutter_chess/models/chess_game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('A new chess game should has initial state and settings.', () {
    var game = ChessGame();
    expect(game.player1.displayName, 'player1');
    expect(game.player1.takingRed, false);
    expect(game.player2.displayName, 'player2');
    expect(game.player2.takingRed, true);
    expect(game.player1.chessPieces.length, 16);
    verifyChessPieces(game.player1.chessPieces);
    expect(game.player2.chessPieces.length, 16);
    verifyChessPieces(game.player2.chessPieces);
    expect(game.moves.length, 0);
  });
}

void verifyChessPieces(List<ChessPiece> chessPieces) {
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
