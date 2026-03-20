import 'package:blabla/model/user/user.dart';

abstract class UserRepository {
  User getUser(int id);
  List<User> get users;
}