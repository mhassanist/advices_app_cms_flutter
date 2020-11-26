import 'package:flutter/material.dart';
import 'package:advice_app/state/advice_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UIState currentUIState = UIState.loading;

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
      return advicesBuilder();
    } else {
      return Container(
        child: Center(
          child: Text(
            'Home Screen is in [Error] state.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
            ),
          ),
        ),
      );
    }
  }
}

ListView advicesBuilder() {
  return ListView.builder(
      itemBuilder: (context, index) => AdviceCard(), itemCount: 3);
}

class AdviceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/hakam - Copy.jpg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ahmed Hakam',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mon 22 Nov 20, 3:20 PM',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              'images/jodan-quotes-greats-1024x536.jpg',
              fit: BoxFit.fill,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    color: Colors.grey,
                    iconSize: 30.0,
                    icon: Icon(Icons.thumb_up),
                  ),
                  Text(
                    '247',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    color: Colors.grey,
                    iconSize: 30.0,
                    icon: Icon(Icons.thumb_down),
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    color: Colors.grey,
                    iconSize: 30.0,
                    icon: Icon(Icons.chat_bubble),
                  ),
                  Text(
                    '57',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    color: Colors.grey,
                    iconSize: 30.0,
                    icon: Icon(Icons.flag),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
