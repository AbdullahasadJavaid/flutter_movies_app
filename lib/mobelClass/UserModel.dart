import 'package:flutter/material.dart';

class User {
  final String userName;
  final String userEmail;
  final String userPass;

  User({
    required this.userName,
    required this.userEmail,
    required this.userPass,
  });
}

class UserProvider extends ChangeNotifier {
  List<User> userList = [];

  void addUser(String name, String email, String password) {
    bool userExists = userList.any((user) => user.userEmail == email);

    if (!userExists) {
      User newUser = User(
        userName: name,
        userEmail: email,
        userPass: password,
      );
      userList.add(newUser);
    }

    notifyListeners();
  }

  bool isUserPresent(String email, String password) {
    bool isPresent = userList
        .any((user) => user.userEmail == email && user.userPass == password);
    return isPresent;
  }
}
