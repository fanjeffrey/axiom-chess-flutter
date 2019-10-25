import 'package:flutter_chess/models/chess_game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('A new chess game should has initial state and settings.', () {
    var game = ChessGame();
    expect(game.redTeam.displayName, 'player1');
    expect(game.blackTeam.displayName, 'player2');
    expect(game.redTeam.chessPieces.length, 16);
    expect(game.blackTeam.chessPieces.length, 16);
    expect(game.moves.length, 0);
  });
}
