import 'chess_piece.dart';
import 'position.dart';

class ChessBoard {
  static const int Files = 9;
  static const int MaxIndex = 89;
  final List<Position> positions = <Position>[];

  ChessBoard() {
    for (var i = 0; i < 90; i++) positions.add(createPosition(i));
  }

  Position createPosition(int index) {
    if (index < 0 || index > 89) return null;
    int rank = index ~/ Files + 1;
    int file = index % Files + 1;

    return Position(rank: rank, file: file);
  }

  int calculateIndex(Position p) {
    return (p.rank - 1) * Files + p.file - 1;
  }

  int calculateIndexFromTop(Position p) {
    return MaxIndex - calculateIndex(p);
  }

  void arrangePiecesAtBottom(List<ChessPiece> chessPieces) {
    for (var p in chessPieces) {
      var index = calculateIndex(p.position);
      positions[index].chessPiece = p;
    }
  }

  void arrangePiecesAtTop(List<ChessPiece> chessPieces) {
    for (var p in chessPieces) {
      var index = calculateIndexFromTop(p.position);
      positions[index].chessPiece = p;
    }
  }
}
