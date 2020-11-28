import 'package:advice_app/models/advice_model.dart';
import 'package:advice_app/models/comment_model.dart';
import 'package:advice_app/models/user_model.dart';

enum UIState {
  loading,
  loaded,
  error,
}

class AdviceData {
  static List<Advice> advices = [];
  static UIState advicesListState;
  static String error;

  static void getAdvices(updateUIState(newUIState)) {
    try {
      if (advices.isNotEmpty) {
        advicesListState = UIState.loaded;
//        updateUIState(advicesListState);
        return;
      }

      advicesListState = UIState.loading;

      //Code for simulating the delay [getting advices data].
      Future.delayed(
        Duration(seconds: 4),
        () {
          getDummyAdvices();
          advicesListState = UIState.loaded;
          updateUIState(advicesListState);
          print(advices.length);
        },
      );
    } catch (e) {
      advicesListState = UIState.error;
      error = 'Something Wrong happened!';
    } finally {
      print(advicesListState);
      updateUIState(advicesListState);
    }
  }

  static void getDummyAdvices() {
    advices = [
      Advice(
        adviceCreator:
            User(userName: 'Ahmed Hakam', userImagePath: 'images/hakam.jpg'),
        adviceImagePath: 'images/advice_01.jpg',
        likesNum: 2,
        dislikesNum: 0,
        flagsNum: 2,
        comments: [
          Comment(),
          Comment(),
        ],
      ),
      Advice(
        adviceCreator:
            User(userName: 'Ibrahim Al-Feky', userImagePath: 'images/feky.jpg'),
        adviceImagePath: 'images/advice_02.jpg',
        likesNum: 5,
        dislikesNum: 1,
        flagsNum: 0,
        comments: [
          Comment(),
        ],
      ),
    ];
  }
}
