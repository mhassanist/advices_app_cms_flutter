import 'package:flutter/material.dart';

import 'actions_widget.dart';

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
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Row(
            children: <Widget>[
              ActionWidget(
                icon: Icons.thumb_up,
                counter: likesNum,
                buttonCallback: () {},
              ),
              SizedBox(
                width: 20.0,
              ),
              ActionWidget(
                icon: Icons.thumb_down,
                counter: dislikesNum,
                buttonCallback: () {},
              ),
              SizedBox(
                width: 20.0,
              ),
              ActionWidget(
                icon: Icons.chat_bubble,
                counter: commentsNum,
                buttonCallback: () {},
              ),
              SizedBox(
                width: 20.0,
              ),
              ActionWidget(
                icon: Icons.flag,
                counter: flagsNum,
                buttonCallback: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
