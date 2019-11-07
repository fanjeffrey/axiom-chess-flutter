import 'package:flutter_chess/models/chess_board.dart';
import 'package:flutter_chess/models/chess_piece.dart';
import 'package:flutter_chess/models/position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChessBoard', () {
    var chessBoard = ChessBoard();

    group('ChessBoard.calculateIndex', () {
      verifyCalculateIndex(chessBoard, 1, 1, 0);
      verifyCalculateIndex(chessBoard, 1, 9, 8);
      verifyCalculateIndex(chessBoard, 3, 2, 19);
      verifyCalculateIndex(chessBoard, 3, 8, 25);
      verifyCalculateIndex(chessBoard, 4, 1, 27);
      verifyCalculateIndex(chessBoard, 4, 9, 35);
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
    });

    group('ChessBoard.arrangePiecesAtTop', () {
      verifyArrangePiecesAtTop(
          chessBoard, GeneralPiece(Position(rank: 1, file: 5)), 1, 5, 85);
    });
  });
}

void verifyCalculateIndex(
    ChessBoard chessBoard, int rank, int file, int expectedIndex) {
  test(
      'the index of the position at rank #$rank and file #$file should be #$expectedIndex',
      () {
    var position = Position(rank: rank, file: file);
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
