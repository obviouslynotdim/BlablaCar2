import 'package:blabla/data/repository/location/location_repository.dart';
import 'package:blabla/data/repository/ride_pref/ride_pref_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RidePrefRepositoryMock implements RidePrefRepository {
  final LocationRepository locationRepository;

  RidePrefRepositoryMock(this.locationRepository);

  late final List<RidePreference> _ridePreferences = [
    RidePreference(
      departure: locationRepository.locations[0], // London
      departureDate: DateTime.now().add(const Duration(days: 1)),
      arrival: locationRepository.locations[19], // Paris
      requestedSeats: 2,
    ),
    RidePreference(
      departure: locationRepository.locations[1], // Manchester
      departureDate: DateTime.now().add(const Duration(days: 7)),
      arrival: locationRepository.locations[20], // Lyon
      requestedSeats: 3,
    ),
    RidePreference(
      departure: locationRepository.locations[2], // Birmingham
      departureDate: DateTime.now(),
      arrival: locationRepository.locations[21], // Marseille
      requestedSeats: 1,
    ),
    RidePreference(
      departure: locationRepository.locations[0],
      departureDate: DateTime.now().add(const Duration(days: 1)),
      arrival: locationRepository.locations[19],
      requestedSeats: 2,
    ),
    RidePreference(
      departure: locationRepository.locations[4], // Leeds
      departureDate: DateTime.now().add(const Duration(days: 7)),
      arrival: locationRepository.locations[20], // Lyon
      requestedSeats: 3,
    ),
    RidePreference(
      departure: locationRepository.locations[5], // Glasgow
      departureDate: DateTime.now(),
      arrival: locationRepository.locations[21], // Marseille
      requestedSeats: 1,
    ),
  ];

  @override
  List<RidePreference> get ridePreferences => _ridePreferences;
}