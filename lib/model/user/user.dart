///
/// This model describes a  BlaBlaCar user.
///
class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String profilePicture;

  final bool verifiedProfile;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.profilePicture,
    required this.verifiedProfile,
  });
}
