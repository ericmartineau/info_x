import 'package:timezone/timezone.dart';

/// Based on the timezone package - provides the user's timezone and location (not GPS, just generalized)
class SunnyLocalization {
  TimeZone? userTimeZone;
  Location? userLocation;

  SunnyLocalization({this.userTimeZone, this.userLocation});

  TimeZone timeZoneOf(String name) {
    return getLocation(name).currentTimeZone;
  }

  Location locationOf(String name) {
    return getLocation(name);
  }
}
