import 'package:advice_app/models/advice_model.dart';

enum UIState {
  loading,
  loaded,
  error,
}

class AdviceData {
  static List<Advice> advices = [];
  static UIState advicesListState = UIState.loading;

  static void getAdvices(updateUIState(newUIState)) {
    try {
      if (advices.isNotEmpty) {
        print('Loaded state because the advices list is not empty.');
        updateUIState(UIState.loaded);
        return;
      }

      //Code for simulating the delay [getting advices data].
      Future.delayed(
        Duration(seconds: 4),
        () {
          advices.add(Advice());
          advicesListState = UIState.loaded;
          updateUIState(advicesListState);
        },
      );
    } catch (e) {
      updateUIState(UIState.error);
    } finally {
      print('Finally block is called with UI state: $advicesListState');
      updateUIState(advicesListState);
    }
  }
}
