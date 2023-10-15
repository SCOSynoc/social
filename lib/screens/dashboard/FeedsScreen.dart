import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/widgets/FeedsCard.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feeds'),
      ),
      body: ListView.builder(
        itemCount: 10, // Change this to the number of posts you want to display
        itemBuilder: (context, index) {
          return const FeedsCard(
              userImage: "https://example.com/user_profile_image.jpg",
              userName: "jacob",
              caption: "This is my caption",
              feedsImage: "https://www.infogrepper.com/wp-content/uploads/2022/10/image-url-for-testing.png");
        },
      ),
    );;
  }
}
