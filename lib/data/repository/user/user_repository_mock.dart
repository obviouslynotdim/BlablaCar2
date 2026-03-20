import 'package:blabla/data/repository/user/user_repository.dart';
import 'package:blabla/model/user/user.dart';

class UserRepositoryMock implements UserRepository {
  // Fake  Users
  final List<User> _fakeUsers = [
    User(
      id: 1,
      firstName: "Alice",
      lastName: "Dupont",
      email: "alice.dupont@example.com",
      phone: "+33 612345678",
      profilePicture: "https://randomuser.me/api/portraits/women/1.jpg",
      verifiedProfile: true,
    ),
    User(
      id: 2,
      firstName: "Bob",
      lastName: "Smith",
      email: "bob.smith@example.com",
      phone: "+44 789456123",
      profilePicture: "https://randomuser.me/api/portraits/men/2.jpg",
      verifiedProfile: false,
    ),
    User(
      id: 3,
      firstName: "Charlie",
      lastName: "Martin",
      email: "charlie.martin@example.com",
      phone: "+33 674839201",
      profilePicture: "https://randomuser.me/api/portraits/men/3.jpg",
      verifiedProfile: true,
    ),
    User(
      id: 4,
      firstName: "Diane",
      lastName: "Lemoine",
      email: "diane.lemoine@example.com",
      phone: "+44 741258963",
      profilePicture: "https://randomuser.me/api/portraits/women/4.jpg",
      verifiedProfile: true,
    ),
    User(
      id: 5,
      firstName: "Ethan",
      lastName: "Brown",
      email: "ethan.brown@example.com",
      phone: "+44 785412369",
      profilePicture: "https://randomuser.me/api/portraits/men/5.jpg",
      verifiedProfile: false,
    ),
    User(
      id: 6,
      firstName: "Fanny",
      lastName: "Durand",
      email: "fanny.durand@example.com",
      phone: "+33 675839201",
      profilePicture: "https://randomuser.me/api/portraits/women/6.jpg",
      verifiedProfile: true,
    ),
  ];

  @override
  User getUser(int id) {
    return _fakeUsers.firstWhere(
      (user) => user.id == id,
      orElse: () => throw Exception("User not found"),
    );
  }

  @override
  List<User> get users => _fakeUsers;
}