import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<String> getCurrentLocation() async {
    try {
      Position position = await getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest,
        forceAndroidLocationManager: true,
      );

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }

    return this.toString();
  }

  @override
  String toString() {
    return '$latitude, $longitude';
  }
}
