import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:social/model/user_model.dart';

import 'graphql_queries.dart';


final graphqlProvider = Provider<GraphQLService>((ref) => GraphQLService()..initGraphQL());



/// An abstract class which contains all the required APIs for the app.
abstract class GraphQLApi {
  /// Initialises GraphQL client
  Future<void> initGraphQL();

  Future<UserModel> addUser({required String name, required String mobile, required String email,});


  Future<List<dynamic>> getUsers();

  Future<bool> followUser();

}

class GraphQLService extends GraphQLApi {

  GraphQLService();
  late GraphQLClient _client;


  @override
  Future<void> initGraphQL() async {
    final _httpLink = HttpLink("http://localhost:5000/");

    _client = GraphQLClient(link: _httpLink, cache: GraphQLCache());
    debugPrint('GraphQL initialised');
  }

  @override
  Future<UserModel> addUser({required String name, required String mobile, required String email,}) async {
    final options = QueryOptions(
        document: gql(Queries.addUser),
        variables: <String, dynamic>{
            "userbody": {
            "name": name,
            "mobile": mobile,
            "email": email,
            "profilePic": "",
          }
        }
     );
    try {
      final result = await _client.query(options);
      final user =UserModel.fromJson(result.data!);
      debugPrint(user.userId);
      return user;
    } catch (e) {
      rethrow;
    }
  }



  @override
  Future<List<dynamic>> getUsers() async{
    final options = QueryOptions(
        document: gql(Queries.getUsers),
    );
    try {
      final result = await _client.query(options);
      final data =result.data!;
      // List<UserModel> userlist = List<dynamic>.from(data["getUsers"]).map((e) => UserModel.fromJson(e)).toList();
      debugPrint("Here the data is $data");
      return data["getUsers"];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> followUser() async {
    final options = QueryOptions(
      document: gql(Queries.followUser),
    );
    try {
      final result = await _client.query(options);
      final data =result.data!;
      // List<UserModel> userlist = List<dynamic>.from(data["getUsers"]).map((e) => UserModel.fromJson(e)).toList();
      debugPrint("Here the data is $data");
      return true;
    } catch (e) {
      rethrow;
    }

  }





}

