import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePrefRepository {
  List<RidePreference> get ridePreferences;
}