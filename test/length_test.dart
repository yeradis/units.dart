import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
    group('Length tests', () {
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