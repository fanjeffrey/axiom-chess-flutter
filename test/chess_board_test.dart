import 'package:flutter_chess/models/chess_board.dart';
import 'package:flutter_chess/models/chess_piece.dart';
import 'package:flutter_chess/models/position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChessBoard', () {
    var chessBoard = ChessBoard();

    group('ChessBoard.constructor', () {
      test('the count of the chess positions should be exactly equal to 90',
          () {
        expect(chessBoard.positions.length, 90);
      });

      var expectedPositions = {
        0: Position(rank: 1, file: 1),
        8: Position(rank: 1, file: 9),
        9: Position(rank: 2, file: 1),
        17: Position(rank: 2, file: 9),
        18: Position(rank: 3, file: 1),
        26: Position(rank: 3, file: 9),
        81: Position(rank: 10, file: 1),
        89: Position(rank: 10, file: 9)
      };

      expectedPositions.forEach((index, expectedPosition) =>
          verifyPosition(chessBoard, index, expectedPosition));
    });

    group('ChessBoard.calculateIndex', () {
      verifyCalculateIndex(chessBoard, Position(rank: 1, file: 1), 0);
      verifyCalculateIndex(chessBoard, Position(rank: 1, file: 9), 8);
      verifyCalculateIndex(chessBoard, Position(rank: 3, file: 2), 19);
      verifyCalculateIndex(chessBoard, Position(rank: 3, file: 8), 25);
      verifyCalculateIndex(chessBoard, Position(rank: 4, file: 1), 27);
      verifyCalculateIndex(chessBoard, Position(rank: 4, file: 9), 35);
    });

    group('ChessBoard.calculateIndexFromTop', () {
      verifyCalculateIndexFromTop(chessBoard, 1, 1, 89);
      verifyCalculateIndexFromTop(chessBoard, 1, 9, 81);
      verifyCalculateIndexFromTop(chessBoard, 3, 2, 70);
      verifyCalculateIndexFromTop(chessBoard, 3, 8, 64);
      verifyCalculateIndexFromTop(chessBoard, 4, 1, 62);
      verifyCalculateIndexFromTop(chessBoard, 4, 9, 54);
    });

    group('ChessBoard.arrangePiecesAtBottom', () {
      verifyArrangePiecesAtBottom(
          chessBoard, GeneralPiece(Position(rank: 1, file: 5)), 1, 5, 4);
      verifyArrangePiecesAtBottom(
          chessBoard, ChariotPiece(Position(rank: 1, file: 1)), 1, 1, 0);
      verifyArrangePiecesAtBottom(
          chessBoard, ChariotPiece(Position(rank: 1, file: 9)), 1, 9, 8);
      verifyArrangePiecesAtBottom(
          chessBoard, CannonPiece(Position(rank: 3, file: 2)), 3, 2, 19);
      verifyArrangePiecesAtBottom(
          chessBoard, CannonPiece(Position(rank: 3, file: 8)), 3, 8, 25);
    });

    group('ChessBoard.arrangePiecesAtTop', () {
      verifyArrangePiecesAtTop(
          chessBoard, GeneralPiece(Position(rank: 1, file: 5)), 1, 5, 85);
      verifyArrangePiecesAtTop(
          chessBoard, ChariotPiece(Position(rank: 1, file: 1)), 1, 1, 89);
      verifyArrangePiecesAtTop(
          chessBoard, ChariotPiece(Position(rank: 1, file: 9)), 1, 9, 81);
      verifyArrangePiecesAtTop(
          chessBoard, CannonPiece(Position(rank: 3, file: 2)), 3, 2, 70);
      verifyArrangePiecesAtTop(
          chessBoard, CannonPiece(Position(rank: 3, file: 8)), 3, 8, 64);
    });
  });
}

void verifyPosition(
    ChessBoard chessBoard, int index, Position expectedPosition) {
  test('the position at #$index should be position: $expectedPosition', () {
    expect(chessBoard.positions[index], expectedPosition);
  });
}

void verifyCalculateIndex(
    ChessBoard chessBoard, Position position, int expectedIndex) {
  test('the index of the position $position should be #$expectedIndex', () {
    var index = chessBoard.calculateIndex(position);
    expect(index, expectedIndex);
  });
}

void verifyCalculateIndexFromTop(
    ChessBoard chessBoard, int rank, int file, int expectedIndex) {
  test(
      'the reversed index of the position at rank #$rank and file #$file should be #$expectedIndex',
      () {
    var position = Position(rank: rank, file: file);
    var index = chessBoard.calculateIndexFromTop(position);
    expect(index, expectedIndex);
  });
}

void verifyArrangePiecesAtBottom(ChessBoard chessBoard, ChessPiece chessPiece,
    int rank, int file, int expectedIndex) {
  test(
      'the ${chessPiece.name} with rank #$rank and file #$file should be at the position #$expectedIndex on chess board',
      () {
    var chessPieces = <ChessPiece>[chessPiece];
    chessBoard.arrangePiecesAtBottom(chessPieces);
    expect(chessBoard.positions[expectedIndex].chessPiece, chessPiece);
  });
}

void verifyArrangePiecesAtTop(ChessBoard chessBoard, ChessPiece chessPiece,
    int rank, int file, int expectedIndex) {
  test(
      'the ${chessPiece.name} with rank #$rank and file #$file should be at the position #$expectedIndex on chess board',
      () {
    var chessPieces = <ChessPiece>[chessPiece];
    chessBoard.arrangePiecesAtTop(chessPieces);
    expect(chessBoard.positions[expectedIndex].chessPiece, chessPiece);
  });
}
