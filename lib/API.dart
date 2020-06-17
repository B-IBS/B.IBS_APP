import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class User {
  String firstName;
  String lastName;
  String gender;
  String age;
  bool signedIn = false;
  int ID = 0;
}

class API {
  User user;

  void initUser(String firstname, String lastname, String gender, String age) {
    this.user.firstName = firstname;
    this.user.lastName = lastname;
    this.user.gender = gender;
    this.user.age = age;
  }

  Widget signin(User usr) {
    // TODO : Sign the user in
    String query = '''query {} ''';
    return Expanded(
      child: Query(
        options: QueryOptions(
          document: query,
        ),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.data == null) {
            return Text("Unable to sign you in");
          }
          return Text("Signed in");
        },
      ),
    );
  }

  Widget signup(String firstname, String lastname, String gender, String age) {
    // TODO : Create a new user and sign him in
    String mutation = '''mutation {} ''';
    return Expanded(
      child: Mutation(
        options: MutationOptions(
          document: mutation,
        ),
        builder: (RunMutation runMutation, QueryResult result,) {
          return RaisedButton(
            onPressed: () {
              print(mutation);
              print(result.data);
              if (result.data == null) {
                //TODO : redirect the user to the correct route
              }
              runMutation({});
            },
          );
        },
      ),
    );
  }

  void logout() {
    // TODO : log the user out
  }

  void resetPassword() {}
}
