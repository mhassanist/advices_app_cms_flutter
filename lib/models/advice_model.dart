import 'user_model.dart';
import 'comment_model.dart';

class Advice {
  String adviceText;
  String adviceImagePath;
  User adviceCreator;
  List<Comment> comments;
  int likesNum;
}
