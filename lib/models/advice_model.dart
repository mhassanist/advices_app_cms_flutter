import 'user_model.dart';
import 'comment_model.dart';

class Advice {
  String adviceText;
  String adviceImagePath;
  User adviceCreator;
  List<Comment> comments;
  int likesNum;
  int dislikesNum;
  //Temp
  int flagsNum;

  Advice(
      {this.adviceCreator,
      this.adviceImagePath,
      this.adviceText,
      this.likesNum,
      this.dislikesNum,
      this.flagsNum,
      this.comments});
}
