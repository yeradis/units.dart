import 'dart:math';

import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
    group('Length conversion tests', () {
        test('Having -1.0 should return 0.0', () {
            expect(new Length.fromMeters(value: -1.0).inMeters, equals(0.0));
            expect(new Length.fromKilometers(value: -1.0).inKilometers, equals(0.0));
            expect(new Length.fromMiles(value: -1.0).inMiles, equals(0.0));
        });

        test('Having 1m return should match', () {
            expect(new Length.fromMeters(value: 1.0).inMeters, equals(1.0));
            expect(new Length.fromMeters(value: 1.0).inKilometers, equals(0.001));
            expect(new Length.fromMeters(value: 1.0).inMiles, equals(0.000621));
        });

        test('Having 1km return should match', () {
            expect(new Length.fromKilometers(value: 1.0).inKilometers, equals(1.0));
            expect(new Length.fromKilometers(value: 1.0).inMeters, equals(1000.0));
            expect(new Length.fromKilometers(value: 1.0).inMiles, equals(0.621371));
        });

        test('Having 1mi return should match', () {
            expect(new Length.fromMiles(value: 1.0).inMiles, equals(1.0));
            expect(new Length.fromMiles(value: 1.0).inMeters, equals(1609.344));
            expect(new Length.fromMiles(value: 1.0).inKilometers, equals(1.609344));
        });
    });

    group('Length comparisson tests', () {
        Length distance20;
        Length distance4;

        setUp(() {
            distance20 = new Length.fromMeters(value: 20.0);
            distance4 = new Length.fromMeters(value: 4.0);
        });

        test('Comparing same distance, should return 0 (same distance)', () {
            expect(distance20.compareTo(distance20), equals(0));
        });

        test('Comparing distances, Distance 4 is shorter than Distance 20', () {
            expect(distance4.compareTo(distance20), lessThan(0));
        });

        test('Comparing distances, Distance 20 is greater than Distance 4', () {
            expect(distance20.compareTo(distance4), greaterThan(0));
        });
    });
}