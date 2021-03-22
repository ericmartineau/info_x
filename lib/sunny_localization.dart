import 'package:timezone/timezone.dart';

import 'sunny_get.dart';

/// Global getter for the sunny localization object.  Requires that the
/// instance has been registered with a SunnyGet container somewhere.
SunnyLocalization get sunnyLocalization => sunny.get();

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
