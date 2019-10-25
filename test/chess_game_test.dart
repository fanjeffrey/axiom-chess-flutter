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
    expect(game.player2.chessPieces.length, 16);
    expect(game.moves.length, 0);
  });
}
