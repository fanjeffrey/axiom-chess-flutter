import 'package:flutter_chess/models/chess_board.dart';
import 'package:flutter_chess/models/position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('testing Chess Board', () {
    var chessBoard = ChessBoard();
    verifyCalculateIndex(chessBoard, 1, 1, 0);
    verifyCalculateIndex(chessBoard, 1, 9, 8);
    verifyCalculateIndex(chessBoard, 3, 2, 19);
    verifyCalculateIndex(chessBoard, 3, 8, 25);
    verifyCalculateIndex(chessBoard, 4, 1, 27);
    verifyCalculateIndex(chessBoard, 4, 9, 35);

    verifyCalculateIndexFromTop(chessBoard, 1, 1, 89);
    verifyCalculateIndexFromTop(chessBoard, 1, 9, 81);
    verifyCalculateIndexFromTop(chessBoard, 3, 2, 70);
    verifyCalculateIndexFromTop(chessBoard, 3, 8, 64);
    verifyCalculateIndexFromTop(chessBoard, 4, 1, 62);
    verifyCalculateIndexFromTop(chessBoard, 4, 9, 54);
  });
}

void verifyCalculateIndex(
    ChessBoard chessBoard, int rank, int file, int expectedIndex) {
  var position = Position(rank: rank, file: file);
  var index = chessBoard.calculateIndex(position);
  expect(index, expectedIndex);
}

void verifyCalculateIndexFromTop(
    ChessBoard chessBoard, int rank, int file, int expectedIndex) {
  var position = Position(rank: rank, file: file);
  var index = chessBoard.calculateIndexFromTop(position);
  expect(index, expectedIndex);
}
