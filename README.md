# Units ![Travis status][travis_status] [![Coverage Status][coverage_status]][coverage_page]

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

>Note: All numbers are forced to a max representation with exactly 6 significant digits.

For example: `12345678910.12345678` will turn into: `12345678910.123457`

[travis_status]: https://travis-ci.org/yeradis/units.dart.svg?branch=master
[coverage_page]: https://coveralls.io/github/yeradis/units.dart?branch=master
[coverage_status]: https://coveralls.io/repos/github/yeradis/units.dart/badge.svg?branch=master
