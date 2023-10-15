import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// a helper function to navigate to next screen with replacing context
void navigateToScreen(BuildContext context, Widget screen, {bool replace = false}) {
  if (replace) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => screen));
  } else {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}


/// a helper function to navigate to next screen with removing previous context
void navigateAndRemovePush(BuildContext context, Widget screen,){
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => screen),
          (Route<dynamic> route) => false
  );
}

/// a helper function to show snackbar
void showSnackBar({required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}


/*
below code is for filter
const resolvers = {
Query: {
album (parent, args, context, info) {
const { ids } = args;
return context.db.Albums.filter((a) => ids.includes(a.id))
}
}
} */

