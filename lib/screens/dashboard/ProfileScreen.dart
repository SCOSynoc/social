import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social/auth/auth_controller.dart';
import 'package:social/utils/colors.dart';
import 'package:social/widgets/custom_text.dart';

import '../../widgets/followButton.dart';
import '../../widgets/profile_widgets.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
       appBar: AppBar(title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           CustomText(text: 'Profile',),
           IconButton(onPressed: (){
                 ref.read(authControllerProvider).logOut(context: context);
            }, icon:const Icon(CupertinoIcons.power) )
         ],
       ),),
       body: Column(
         children: [
           const Center(
             child: CircleAvatar(
               radius: 50,
             ),
           ),

           const Padding(
             padding: EdgeInsets.all(8.0),
             child: Center(child: Text("Dummy"),
           ),),

           Container(
             child: const Center(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: ProfileEnagementCounts(count: '0', engageTypeText: 'Followers', ),
                   ),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: ProfileEnagementCounts(count: '0', engageTypeText: 'Following',),
                   ),
                 ],),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: FollowButton(text: "Follow", width: MediaQuery.of(context).size.width*0.35,
               height: MediaQuery.of(context).size.height*0.03,  onPressed: () {

               },),
           ),

           Expanded(
             child: GridView.builder(
               itemCount: 5,
               shrinkWrap: true,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                 childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height *1.25,
                 crossAxisSpacing: 2,
                 mainAxisSpacing: 2,),
               itemBuilder: (BuildContext context, int index) {
                 return Stack(children: [
                   Container(color: AppColors.appPrimaryColor,),
                   Positioned.directional(
                       textDirection: TextDirection.ltr,
                       bottom: -3,
                       child: Container(child: Row(children: [Icon(CupertinoIcons.eye_fill), Text("100",)], ),))
                 ],);
               },
             ),
           )


         ],
       ),
    );
  }
}
