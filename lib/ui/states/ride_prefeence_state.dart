import 'package:blabla/data/repository/ride_pref/ride_pref_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  RidePrefRepository ridePrefRepository;

  RidePreferenceState({required this.ridePrefRepository}) {
    initHistory();
  }

  RidePreference? _currentRidePreference;
  List<RidePreference> _history = [];

  RidePreference? get ridePreference => _currentRidePreference;
  int get maxAllowedSeats => 8;

  void initHistory() {
    _history = List<RidePreference>.from(ridePrefRepository.ridePreferences);
    if (_history.isNotEmpty) {
      _currentRidePreference = _history.last;
    }
  }

  void setRidePreference(RidePreference ridePreference) {
    if (_currentRidePreference == ridePreference) {
      return;
    }
    _currentRidePreference = ridePreference;
    _history.add(ridePreference);
    notifyListeners();
  }

  List<RidePreference> get history => _history;
}