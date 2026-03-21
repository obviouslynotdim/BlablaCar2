import 'package:blabla/data/repository/location/location_repository.dart';
import 'package:blabla/data/repository/location/location_repository_mock.dart';
import 'package:blabla/data/repository/ride/ride_repository.dart';
import 'package:blabla/data/repository/ride/ride_repository_mock.dart';
import 'package:blabla/data/repository/ride_pref/ride_pref_repository.dart';
import 'package:blabla/data/repository/ride_pref/ride_pref_repository_mock.dart';
import 'package:blabla/data/repository/user/user_repository_mock.dart';
import 'package:blabla/ui/states/ride_prefeence_state.dart';
import 'package:provider/provider.dart';

import 'main_common.dart';

List<InheritedProvider> get devProviders {
  final locationRepository = LocationRepositoryMock();
  final userRepository = UserRepositoryMock();
  final ridePrefRepository = RidePrefRepositoryMock(
    locationRepository,
  );
  
  return [
    Provider<LocationRepository>(create: (context) => locationRepository),
    Provider<RidePrefRepository>(
      create: (context) => ridePrefRepository,
    ),
    Provider<RideRepository>(
      create: (context) => RideRepositoryMock(
        locationRepository,
        userRepository,
      ),
    ),
    ChangeNotifierProvider<RidePreferenceState>(
      create: (context) => RidePreferenceState(ridePrefRepository: ridePrefRepository ),
    ),
  ];
}

void main() {
  mainCommon(devProviders);
}