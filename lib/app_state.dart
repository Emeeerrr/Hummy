import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _type = '';
  String get type => _type;
  set type(String _value) {
    _type = _value;
  }

  double _units = 0.0;
  double get units => _units;
  set units(double _value) {
    _units = _value;
  }

  String _id = '';
  String get id => _id;
  set id(String _value) {
    _id = _value;
  }

  String _address = '';
  String get address => _address;
  set address(String _value) {
    _address = _value;
  }

  DateTime? _hour = DateTime.fromMillisecondsSinceEpoch(1682918340000);
  DateTime? get hour => _hour;
  set hour(DateTime? _value) {
    _hour = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
