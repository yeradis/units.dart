import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
  group('Weight tests', () {
    test('Having -1.0 should match return', () {
      expect(new Weight.fromGrams(value: -1.0).inKiloGrams, equals(-0.001));
      expect(new Weight.fromGrams(value: -1.0).inPounds,
          equals(-0.002204622621848776));
    });

    test('Having 1 gram should match return', () {
      expect(new Weight.fromGrams(value: 1.0).inGrams, equals(1.0));
      expect(new Weight.fromGrams(value: 1.0).inKiloGrams, equals(0.001));
      expect(new Weight.fromGrams(value: 1.0).inPounds, equals(0.002204622621848776));
    });

    test('Having 1200 gram should match return', () {
      expect(new Weight.fromGrams(value: 1200.0).inGrams, equals(1200));
      expect(new Weight.fromGrams(value: 1200.0).inKiloGrams, equals(1.2));
      expect(new Weight.fromGrams(value: 1200.0).inPounds, equals(2.6455471462185307));
    });
  });

  group('Weight comparison tests', () {
    Weight weight1;
    Weight weight2;

    setUp(() {
      weight1 = Weight.fromGrams(value: 1200.0);
      weight2 = Weight.fromPounds(value: 3.0); // ~1.3kg
    });

    test('Comparing same weight, should return 0 (same weight)', () {
      expect(weight1.compareTo(weight1), equals(0));
    });

    test('Comparing weight, weight 1 is lighter than weight 2', () {
      expect(weight1.compareTo(weight2), lessThan(0));
    });

    test('Comparing weight, weight 2 is heavier than weight 1', () {
      expect(weight2.compareTo(weight1), greaterThan(0));
    });
  });
}
