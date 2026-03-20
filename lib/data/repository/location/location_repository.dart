import 'package:blabla/model/ride/locations.dart';

abstract class LocationRepository {
  List<Location> getSearchLocations(String query);
  List<Location> get locations;
}