import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social/services/controller/services_controller.dart';
import 'package:social/widgets/custom_text.dart';
import 'package:social/widgets/followButton.dart';

import '../../model/user_model.dart';

class FindPeopleScreen extends ConsumerWidget {
  const FindPeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feeds'),
    ),
      body: FutureBuilder(
         future: ref.read(serviceControllerProvider).getusers(),
         builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
           if(snapshot.connectionState == ConnectionState.waiting) {
             return const Center(child: CircularProgressIndicator(),);
           }
           if(snapshot.hasData){
             return ListView.builder(
                 shrinkWrap: true,
                 itemCount: snapshot.data?.length ?? 0,
                 itemBuilder: (context,index) {
                   List<dynamic> data = snapshot.data!;
                   UserModel user = UserModel.fromJson(data[index]);
                   return ListTile(title: Text("${data[index]["name"]} "), trailing: FollowButton(
                     text: 'Follow', width: MediaQuery.of(context).size.width*0.15, height: MediaQuery.of(context).size.height*0.08,),);
                 });
           }
           return const Center(child: CustomText( text: 'Failed to load data',),);

      },
      ),

    );

  }
}
