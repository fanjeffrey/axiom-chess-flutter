import 'chess_board.dart';
import 'chess_piece.dart';
import 'player.dart';
import 'position.dart';

class ChessGame {
  final Player hostPlayer;
  final Player guestPlayer;
  final ChessBoard chessBoard = ChessBoard();
  final List<Move> moves = <Move>[];
  final List<ChessPiece> redChessPieces = <ChessPiece>[];
  final List<ChessPiece> blackChessPieces = <ChessPiece>[];

  ChessGame(this.hostPlayer, this.guestPlayer) {
    initPieces(redChessPieces);
    initPieces(blackChessPieces);
    hostPlayer.takeBlack();
    guestPlayer.takeRed();
    chessBoard.arrangePiecesAtBottom(blackChessPieces);
    chessBoard.arrangePiecesAtTop(redChessPieces);
  }

  initPieces(List<ChessPiece> chessPieces) {
    chessPieces.addAll([
      GeneralPiece(Position(rank: 1, file: 5)),
      AdvisorPiece(Position(rank: 1, file: 4)),
      AdvisorPiece(Position(rank: 1, file: 6)),
      ElephantPiece(Position(rank: 1, file: 3)),
      ElephantPiece(Position(rank: 1, file: 7)),
      HorsePiece(Position(rank: 1, file: 2)),
      HorsePiece(Position(rank: 1, file: 8)),
      ChariotPiece(Position(rank: 1, file: 1)),
      ChariotPiece(Position(rank: 1, file: 9)),
      CannonPiece(Position(rank: 3, file: 2)),
      CannonPiece(Position(rank: 3, file: 8)),
      SoldierPiece(Position(rank: 4, file: 1)),
      SoldierPiece(Position(rank: 4, file: 3)),
      SoldierPiece(Position(rank: 4, file: 5)),
      SoldierPiece(Position(rank: 4, file: 7)),
      SoldierPiece(Position(rank: 4, file: 9))
    ]);
  }
}

class Move {}
