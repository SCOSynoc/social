/// this class contains all the Queries and mutation require for graphql api

abstract class Queries {
  static const String addUser = r'''
    mutation Mutation($userbody: userInput) {
        createUser(userbody: $userbody) {
          userId
          name
          mobile
          following
          followers
          email
          createdAt
        }
      }
  ''';

  static const String searchUser = r'''
    query Query($name: String) {
        searchUser(name: $name) {
          name
          userId
        }
      }
  ''';

  static const String getUsers = r'''
    query GetUsers {
        getUsers {
          userId
          profilePic
          name
          mobile
          following
          followers
          email
          createdAt
        }
      }
  ''';

  static const String followUser = r'''
        mutation Mutation($following: FollowingInc) {
          editUserFollowing(following: $following)
        }
  ''';
}
