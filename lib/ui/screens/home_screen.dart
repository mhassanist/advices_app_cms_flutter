import 'package:advice_app/ui/widgets/advices_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:advice_app/state/advice_data.dart';
import 'package:advice_app/models/advice_model.dart';
import 'package:advice_app/ui/widgets/advice_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UIState currentUIState;

  @override
  void initState() {
    super.initState();
    //print(currentUIState);
    AdviceData.getAdvices((newUIState) {
      setState(() {
        currentUIState = newUIState;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentUIState == UIState.loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (currentUIState == UIState.loaded) {
      return buildAdvicesCards(AdviceData.advices);
    } else if (currentUIState == UIState.error) {
      return AdvicesErrorWidget(
        errorText: AdviceData.error,
      );
    } else {
      return Container();
    }
  }
}

ListView buildAdvicesCards(List<Advice> advicesList) {
  return ListView.builder(
      itemBuilder: (context, index) => AdviceCard(
            userName: advicesList[index].adviceCreator.userName,
            userImage: advicesList[index].adviceCreator.userImagePath,
            adviceImage: advicesList[index].adviceImagePath,
            likesNum: advicesList[index].likesNum,
            dislikesNum: advicesList[index].dislikesNum,
            commentsNum: advicesList[index].comments.length,
            flagsNum: advicesList[index].flagsNum,
          ),
      itemCount: AdviceData.advices.length);
}
