import 'package:flutter/material.dart';

class AdviceCard extends StatelessWidget {
  final String userImage;
  final String userName;
  final String adviceImage;
  final int likesNum;
  final int dislikesNum;
  final int commentsNum;
  final int flagsNum;

  AdviceCard(
      {this.userImage,
      this.userName,
      this.adviceImage,
      this.likesNum,
      this.dislikesNum,
      this.commentsNum,
      this.flagsNum});
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
                backgroundImage: AssetImage(userImage),
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
                      userName,
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
              adviceImage,
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
                    '$likesNum',
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
                    '$dislikesNum',
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
                    '$commentsNum',
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
                    '$flagsNum',
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
