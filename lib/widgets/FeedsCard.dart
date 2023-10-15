import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedsCard extends StatelessWidget {
  const FeedsCard({Key? key, required this.userImage,
    required this.userName, required this.caption,
    required this.feedsImage}) : super(key: key);
  final String userImage;
  final String userName;
  final String caption;
  final String feedsImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
            title: Text(userName),
          ),
          Image.network(feedsImage, fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.45,
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(caption),
          ),
          ButtonBar(
            buttonTextTheme: ButtonTextTheme.primary,
            buttonPadding: EdgeInsets.zero,
            layoutBehavior: ButtonBarLayoutBehavior.constrained,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );;
  }
}
