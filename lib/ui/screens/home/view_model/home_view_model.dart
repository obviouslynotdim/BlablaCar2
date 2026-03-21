import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/ui/states/ride_prefeence_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferenceState;
  HomeViewModel({required this.ridePreferenceState}) {
    ridePreferenceState.addListener(notifyListeners);
  }

  List<RidePreference> get history =>
      ridePreferenceState.history.reversed.toList();

  RidePreference? get selectedPreference => ridePreferenceState.ridePreference;

  void setRidePreference(RidePreference preference) {
    ridePreferenceState.setRidePreference(preference);
  }

  @override
  void dispose() {
    ridePreferenceState.removeListener(notifyListeners);
    super.dispose();
  }
}