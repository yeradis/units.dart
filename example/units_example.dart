import 'package:units/units.dart';

main() {
  var speed = new Speed.fromKilometerPerHour(value: 360.0);
  print('360 km/h are ${speed.inMeterPerSecond} m/s');
  print('360 km/h are ${speed.inMeterPerSecond} mi/h');
}
