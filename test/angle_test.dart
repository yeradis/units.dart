import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
    group('Angle tests', () {
        test('Having -1.0 should match return', () {
            expect(new Angle.fromDegrees(value: -1.0).inDegrees, equals(-1.0));
            expect(new Angle.fromDegrees(value: -1.0).inRadians, equals(-0.017453));
            expect(new Angle.fromDegrees(value: -1.0).inGradians, equals(-1.111111));

            expect(new Angle.fromRadians(value: -1.0).inRadians, equals(-1.0));
            expect(new Angle.fromRadians(value: -1.0).inDegrees, equals(-57.29578));
            expect(new Angle.fromRadians(value: -1.0).inGradians, equals(-63.661977));

            expect(new Angle.fromGradian(value: -1.0).inRadians, equals(-0.015708));
            expect(new Angle.fromGradian(value: -1.0).inDegrees, equals(-0.9));
            expect(new Angle.fromGradian(value: -1.0).inGradians, equals(-1));
        });

        test('Having 1.0 degree should match return', () {
            expect(new Angle.fromDegrees(value: 1.0).inDegrees, equals(1.0));
            expect(new Angle.fromDegrees(value: 1.0).inRadians, equals(0.017453));
            expect(new Angle.fromDegrees(value: 1.0).inGradians, equals(1.111111));
        });

        test('Having 35 degrees should match return', () {
            expect(new Angle.fromDegrees(value: 35.0).inDegrees, equals(35));
            expect(new Angle.fromDegrees(value: 35.0).inRadians, equals(0.610865));
            expect(new Angle.fromDegrees(value: 35.0).inGradians, equals(38.888889));
        });

        test('Having 2 radians should match return', () {
            expect(new Angle.fromRadians(value: 2.0).inDegrees, equals(114.591559));
            expect(new Angle.fromRadians(value: 2.0).inRadians, equals(2.0));
            expect(new Angle.fromRadians(value: 2.0).inGradians, equals(127.323954));
        });
    });

    group('Angle comparisson tests', () {
        Angle angle20;
        Angle angle4;

        setUp(() {
            angle20 = new Angle.fromDegrees(value: 20.0);
            angle4 = new Angle.fromDegrees(value: 4.0);
        });

        test('Comparing same distance, should return 0 (same distance)', () {
            expect(angle20.compareTo(angle20), equals(0));
        });

        test('Comparing distances, Distance 4 is shorter than Distance 20', () {
            expect(angle4.compareTo(angle20), lessThan(0));
        });

        test('Comparing distances, Distance 20 is greater than Distance 4', () {
            expect(angle20.compareTo(angle4), greaterThan(0));
        });
    });
}