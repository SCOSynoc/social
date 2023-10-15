import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social/model/user_model.dart';
import 'package:social/services/states/services_state.dart';

import '../repository/graphql_services.dart';


/// this class is a api controller for interacting with ui

final serviceControllerProvider = Provider((ref) {
   final servicesRepository = ref.watch(graphqlProvider);
   return ServicesController(
       const ServicesState(),graphQLApi: servicesRepository, ref: ref
   );
});



class ServicesController extends StateNotifier<ServicesState>  {
  ServicesController(super.state,{required this.graphQLApi, this.ref} );

  final GraphQLApi graphQLApi;
  final ProviderRef? ref;


  ServicesState states = ServicesState();
  /// create user api calling
  Future<void> createUser({required String name, required String mobile, required String email}) async {
    try {
      currentState(const ServicesState.loading());
      final user = await graphQLApi.addUser(name: name, mobile: mobile, email: email,);
      if (user != null) {
        currentState(ServicesState.success(user));

      } else {
        currentState(const ServicesState());

      }
    } catch (e) {
      currentState(const ServicesState.error('Could not create user'));
      debugPrint(e.toString());
    }
  }


  void currentState(ServicesState state) {
     states = state;
  }

  Future<List<dynamic>> getusers() async{
    try {
      final data = await graphQLApi.getUsers();
      return data;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }




}



/*
class ServicesNotifier extends StateNotifier<ServicesState> {
  /// Constructor for services notifier.
   ServicesNotifier(super._state, this._graphQLApi) ;

  final GraphQLApi _graphQLApi;


}*/
