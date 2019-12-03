import 'package:flutter_chess/models/chess_board.dart';
import 'package:flutter_chess/models/chess_game.dart';
import 'package:flutter_chess/models/chess_piece.dart';
import 'package:flutter_chess/models/player.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChessGame.f2f', () {
    var me = Player('player1');
    var opponent = Player('player2');
    var game = ChessGame.f2f(me, opponent);

    test('- there should be a chess board', () {
      expect(game.chessBoard != null, true);
    });

    test('- there should be 2 sets of chess pieces', () {
      expect(game.blackChessPieces != null, true);
      expect(game.redChessPieces != null, true);
    });

    group('- the Black set', () {
      verifyChessPieces(game.blackChessPieces);
    });

    group('- the Red set', () {
      verifyChessPieces(game.redChessPieces);
    });

    group(
        '- all Black chess pieces should locate within the bottom side of the chess board',
        () {
      verifyBlackChessPiecesOnChessBoard(game.chessBoard);
    });

    group(
        '- all Red chess pieces should locate within the top side of the chess board',
        () {
      verifyRedChessPiecesOnChessBoard(game.chessBoard);
    });

    test('- I should use the Black chess pieses', () {
      expect(me.takingRed, false);
      expect(me.takingRed, game.me.takingRed);
    });

    test('- the opponent should use the Red chess pieces', () {
      expect(opponent.takingRed, true);
      expect(opponent.takingRed, game.opponent.takingRed);
    });

    test('- the moves history should be empty', () {
      expect(game.moves.length, 0);
    });
  });
}

void verifyChessPieces(List<ChessPiece> chessPieces) {
  test('- should consist of 16 pieces', () {
    expect(chessPieces.length, 16);
  });

  test('- only 1 General', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == GeneralPiece.Name;
            })
            .toList()
            .length,
        1);
  });

  test('- only 2 Advisor pieces', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == AdvisorPiece.Name;
            })
            .toList()
            .length,
        2);
  });

  test('- only 2 Elephant pieces', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == ElephantPiece.Name;
            })
            .toList()
            .length,
        2);
  });

  test('- only 2 Horse pieces', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == HorsePiece.Name;
            })
            .toList()
            .length,
        2);
  });

  test('- only 2 Chariot pieces', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == ChariotPiece.Name;
            })
            .toList()
            .length,
        2);
  });

  test('- only 2 Cannon pieces', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == CannonPiece.Name;
            })
            .toList()
            .length,
        2);
  });

  test('- only 5 Soldier pieces', () {
    expect(
        chessPieces
            .where((p) {
              return p.name == SoldierPiece.Name;
            })
            .toList()
            .length,
        5);
  });
}

void verifyBlackChessPiecesOnChessBoard(ChessBoard chessBoard) {
  test('- the piece on position #0 should be a Chariot', () {expect(chessBoard.positions[0].chessPiece.name, ChariotPiece.Name);});
  test('- the piece on position #1 should be a Horse', () {expect(chessBoard.positions[1].chessPiece.name, HorsePiece.Name);});
  test('- the piece on position #2 should be an Elephant', () {expect(chessBoard.positions[2].chessPiece.name, ElephantPiece.Name);});
  test('- the piece on position #3 should be an Advisor', () {expect(chessBoard.positions[3].chessPiece.name, AdvisorPiece.Name);});
  test('- the piece on position #4 should be a General', () {expect(chessBoard.positions[4].chessPiece.name, GeneralPiece.Name);});
  test('- the piece on position #5 should be an Advisor', () {expect(chessBoard.positions[5].chessPiece.name, AdvisorPiece.Name);});
  test('- the piece on position #6 should be an Elephant', () {expect(chessBoard.positions[6].chessPiece.name, ElephantPiece.Name);});
  test('- the piece on position #7 should be a Horse', () {expect(chessBoard.positions[7].chessPiece.name, HorsePiece.Name);});
  test('- the piece on position #8 should be a Chariot', () {expect(chessBoard.positions[8].chessPiece.name, ChariotPiece.Name);});

  test('- the piece on position #19 should be a Cannon', () {expect(chessBoard.positions[19].chessPiece.name, CannonPiece.Name);});
  test('- the piece on position #25 should be a Cannon', () {expect(chessBoard.positions[25].chessPiece.name, CannonPiece.Name);});

  test('- the piece on position #27 should be a Soldier', () {expect(chessBoard.positions[27].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #29 should be a Soldier', () {expect(chessBoard.positions[29].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #31 should be a Soldier', () {expect(chessBoard.positions[31].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #33 should be a Soldier', () {expect(chessBoard.positions[33].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #35 should be a Soldier', () {expect(chessBoard.positions[35].chessPiece.name, SoldierPiece.Name);});
}

void verifyRedChessPiecesOnChessBoard(ChessBoard chessBoard) {
  test('- the piece on position #89 should be a Chariot', () {expect(chessBoard.positions[89].chessPiece.name, ChariotPiece.Name);});
  test('- the piece on position #88 should be a Horse', () {expect(chessBoard.positions[88].chessPiece.name, HorsePiece.Name);});
  test('- the piece on position #87 should be an Elephant', () {expect(chessBoard.positions[87].chessPiece.name, ElephantPiece.Name);});
  test('- the piece on position #86 should be an Advisor', () {expect(chessBoard.positions[86].chessPiece.name, AdvisorPiece.Name);});
  test('- the piece on position #85 should be a General', () {expect(chessBoard.positions[85].chessPiece.name, GeneralPiece.Name);});
  test('- the piece on position #84 should be an Advisor', () {expect(chessBoard.positions[84].chessPiece.name, AdvisorPiece.Name);});
  test('- the piece on position #83 should be an Elephant', () {expect(chessBoard.positions[83].chessPiece.name, ElephantPiece.Name);});
  test('- the piece on position #82 should be a Horse', () {expect(chessBoard.positions[82].chessPiece.name, HorsePiece.Name);});
  test('- the piece on position #81 should be a Chariot', () {expect(chessBoard.positions[81].chessPiece.name, ChariotPiece.Name);});

  test('- the piece on position #70 should be a Cannon', () {expect(chessBoard.positions[70].chessPiece.name, CannonPiece.Name);});
  test('- the piece on position #64 should be a Cannon', () {expect(chessBoard.positions[64].chessPiece.name, CannonPiece.Name);});

  test('- the piece on position #62 should be a Soldier', () {expect(chessBoard.positions[62].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #60 should be a Soldier', () {expect(chessBoard.positions[60].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #58 should be a Soldier', () {expect(chessBoard.positions[58].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #56 should be a Soldier', () {expect(chessBoard.positions[56].chessPiece.name, SoldierPiece.Name);});
  test('- the piece on position #54 should be a Soldier', () {expect(chessBoard.positions[54].chessPiece.name, SoldierPiece.Name);});
}
