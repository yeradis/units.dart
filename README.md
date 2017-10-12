# units

A starting point for measurement units in Dart.

Included right now:

- Speed
- Length

## Usage

A simple usage example:

```dart
    import 'package:units/units.dart';

    main() {
        var speed = new Speed.fromKilometerPerHour(value: 360.0);
        print('360 km/h are ${speed.inMeterPerSecond} m/s');
        print('360 km/h are ${speed.inMeterPerSecond} mi/h');
    }
```
