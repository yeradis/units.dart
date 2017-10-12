import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
    group('Meters per seconds tests', () {
        test('Having -1.0 should return 0.0', () {
            expect(new Speed.fromMeterPerSecond(value: -1.0).inMeterPerSecond, 0.0);
        });

        test('Having 0.0 should return 0.0', () {
            expect(new Speed.fromMeterPerSecond(value: 0.0).inMeterPerSecond, 0.0);
        });

        test('Having 1.0 should return 1.0', () {
            expect(new Speed.fromMeterPerSecond(value: 1.0).inMeterPerSecond, 1.0);
        });
    });

    group('Kilometers per hour tests', () {
        test('Having -1.0 should return 0.0', () {
            expect(new Speed.fromKilometerPerHour(value: -1.0).inMeterPerSecond, 0.0);
        });

        test('Having 0.0 should return 0.0', () {
            expect(new Speed.fromKilometerPerHour(value: 0.0).inMeterPerSecond, 0.0);
        });

        test('Having 1.0 should return 0.27', () {
            expect(new Speed.fromKilometerPerHour(value: 1.0).inMeterPerSecond, 0.27777777777778);
        });

        test('Having 360 should return 100', () {
            expect(new Speed.fromKilometerPerHour(value: 360.0).inMeterPerSecond, allOf(
                greaterThanOrEqualTo(100), lessThan(101)
            ),);
        });
    });
}
