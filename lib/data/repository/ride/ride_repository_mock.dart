import 'package:blabla/data/repository/location/location_repository_mock.dart';
import 'package:blabla/data/repository/ride/ride_repository.dart';
import 'package:blabla/data/repository/user/user_repository_mock.dart';
import 'package:blabla/model/ride/ride.dart';

class RideRepositoryMock implements RideRepository {
  final LocationRepositoryMock locationRepository;
  final UserRepositoryMock userRepository;

  RideRepositoryMock(this.locationRepository, this.userRepository);

  List<Ride> get fakeRides => [
    Ride(
      departureLocation: locationRepository.locations[0], // London
      departureDate: DateTime.now().add(Duration(hours: 3)),
      arrivalLocation: locationRepository.locations[19], // Paris
      arrivalDateTime: DateTime.now().add(Duration(hours: 8)),
      driver: userRepository.users[0],
      availableSeats: 2,
      pricePerSeat: 25.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[0], // London
      departureDate: DateTime.now().add(Duration(hours: 10)),
      arrivalLocation: locationRepository.locations[19], // Paris
      arrivalDateTime: DateTime.now().add(Duration(hours: 9)),
      driver: userRepository.users[1],
      availableSeats: 1,
      pricePerSeat: 30.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[2], // Birmingham
      departureDate: DateTime.now().add(Duration(days: 1)),
      arrivalLocation: locationRepository.locations[22], // Toulouse
      arrivalDateTime: DateTime.now().add(Duration(days: 1, hours: 4)),
      driver: userRepository.users[2],
      availableSeats: 2,
      pricePerSeat: 22.5,
    ),

    Ride(
      departureLocation: locationRepository.locations[3], // Liverpool
      departureDate: DateTime.now().add(Duration(days: 2)),
      arrivalLocation: locationRepository.locations[23], // Nice
      arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 6)),
      driver: userRepository.users[3],
      availableSeats: 3,
      pricePerSeat: 35.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[4], // Leeds
      departureDate: DateTime.now().add(Duration(days: 2, hours: 5)),
      arrivalLocation: locationRepository.locations[24], // Nantes
      arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 10)),
      driver: userRepository.users[4],
      availableSeats: 4,
      pricePerSeat: 28.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[5], // Glasgow
      departureDate: DateTime.now().add(Duration(days: 3)),
      arrivalLocation: locationRepository.locations[25], // Strasbourg
      arrivalDateTime: DateTime.now().add(Duration(days: 3, hours: 7)),
      driver: userRepository.users[5],
      availableSeats: 3,
      pricePerSeat: 40.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[6], // Sheffield
      departureDate: DateTime.now().add(Duration(days: 3, hours: 2)),
      arrivalLocation: locationRepository.locations[26], // Montpellier
      arrivalDateTime: DateTime.now().add(Duration(days: 3, hours: 8)),
      driver: userRepository.users[0],
      availableSeats: 2,
      pricePerSeat: 26.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[7], // Bristol
      departureDate: DateTime.now().add(Duration(days: 4)),
      arrivalLocation: locationRepository.locations[27], // Bordeaux
      arrivalDateTime: DateTime.now().add(Duration(days: 4, hours: 6)),
      driver: userRepository.users[1],
      availableSeats: 3,
      pricePerSeat: 29.0,
    ),

    Ride(
      departureLocation: locationRepository.locations[8], // Edinburgh
      departureDate: DateTime.now().add(Duration(days: 4, hours: 4)),
      arrivalLocation: locationRepository.locations[28], // Lille
      arrivalDateTime: DateTime.now().add(Duration(days: 4, hours: 9)),
      driver: userRepository.users[2],
      availableSeats: 4,
      pricePerSeat: 27.5,
    ),

    Ride(
      departureLocation: locationRepository.locations[9], // Leicester
      departureDate: DateTime.now().add(Duration(days: 5)),
      arrivalLocation: locationRepository.locations[29], // Rennes
      arrivalDateTime: DateTime.now().add(Duration(days: 5, hours: 5)),
      driver: userRepository.users[3],
      availableSeats: 3,
      pricePerSeat: 24.0,
    ),

    // Continue the same pattern until 50 rides
  ];

  @override
  List<Ride> getRides() => fakeRides;
}