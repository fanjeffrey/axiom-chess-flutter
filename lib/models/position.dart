import 'chess_piece.dart';

class Position {
  final int rank;
  final int file;
  ChessPiece chessPiece;

  Position({this.rank, this.file});

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (this.rank == other.rank && this.file == other.file);

  @override
  int get hashCode => rank * 10 + file;

  @override
  String toString() {
    return '{rank: $rank, file: $file}';
  }
}
