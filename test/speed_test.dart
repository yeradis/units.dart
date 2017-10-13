import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
    group('Speed tests', () {
        test('Having -1.0 should return 0.0', () {
            expect(new Speed.fromMeterPerSecond(value: -1.0).inMeterPerSecond, 0.0);
            expect(new Speed.fromKilometerPerHour(value: -1.0).inMeterPerSecond, 0.0);
            expect(new Speed.fromMilePerHour(value: -1.0).inMeterPerSecond, 0.0);
            expect(new Speed.fromKnot(value: -1.0).inMeterPerSecond, 0.0);
        });

        test('Having 0.0 should return 0.0', () {
            expect(new Speed.fromMeterPerSecond(value: 0.0).inMeterPerSecond, 0.0);
            expect(new Speed.fromKilometerPerHour(value: 0.0).inMeterPerSecond, 0.0);
            expect(new Speed.fromMilePerHour(value: 0.0).inMeterPerSecond, 0.0);
            expect(new Speed.fromKnot(value: 0.0).inMeterPerSecond, 0.0);

        });

        test('Having 1m/s should match return', () {
            expect(new Speed.fromMeterPerSecond(value: 1.0).inMeterPerSecond, 1.0);
            expect(new Speed.fromMeterPerSecond(value: 1.0).inKilometerPerHour, 3.6);
            expect(new Speed.fromMeterPerSecond(value: 1.0).inMilePerHour, 2.236936);
            expect(new Speed.fromMeterPerSecond(value: 1.0).inKnot, 1.943844);
        });

        test('Having 1km/h should match return', () {
            expect(new Speed.fromKilometerPerHour(value: 1.0).inKilometerPerHour, 1.0);
            expect(new Speed.fromKilometerPerHour(value: 1.0).inMeterPerSecond, 0.277778);
            expect(new Speed.fromKilometerPerHour(value: 1.0).inMilePerHour, 0.621371);
            expect(new Speed.fromKilometerPerHour(value: 1.0).inKnot, 0.539957);
        });

        test('Having 1mi/h should match return', () {
            expect(new Speed.fromMilePerHour(value: 1.0).inKilometerPerHour, 1.609344);
            expect(new Speed.fromMilePerHour(value: 1.0).inMeterPerSecond, 0.44704);
            expect(new Speed.fromMilePerHour(value: 1.0).inMilePerHour, 1.0);
            expect(new Speed.fromMilePerHour(value: 1.0).inKnot, 0.868976);
        });

        test('Having 1kn (knot) should match return', () {
            expect(new Speed.fromKnot(value: 1.0).inKilometerPerHour, 1.852);
            expect(new Speed.fromKnot(value: 1.0).inMeterPerSecond, 0.514444);
            expect(new Speed.fromKnot(value: 1.0).inMilePerHour, 1.150779);
            expect(new Speed.fromKnot(value: 1.0).inKnot, 1.0);
        });
    });

    group('Speed comparisson tests', () {
        Speed speed20;
        Speed speed4;

        setUp(() {
            speed20 = new Speed.fromMeterPerSecond(value: 20.0);
            speed4 = new Speed.fromMeterPerSecond(value: 4.0);
        });

        test('Comparing same speed, should return 0 (same speed)', () {
            expect(speed20.compareTo(speed20), equals(0));
        });

        test('Comparing speed, Speed 4 is shorter than Speed 20', () {
            expect(speed4.compareTo(speed20), lessThan(0));
        });

        test('Comparing speed, speed 20 is greater than speed 4', () {
            expect(speed20.compareTo(speed4), greaterThan(0));
        });
    });
}
