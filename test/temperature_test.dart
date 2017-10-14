import 'package:units/units.dart';
import 'package:test/test.dart';

void main() {
    group('Angle tests', () {
        test('Having -1.0 and 0.0 celsius degree should match return', () {
            expect(new Temperature.fromCelsius(value: -1.0).inCelsius, equals(-1.0));
            expect(new Temperature.fromCelsius(value: -1.0).inFahrenheit, equals(30.2));
            expect(new Temperature.fromCelsius(value: -1.0).inKelvin, equals(272.15));
            expect(new Temperature.fromCelsius(value: -1.0).inRankine, equals(489.87));
            expect(new Temperature.fromCelsius(value: -1.0).inRomer, equals(6.975));

            expect(new Temperature.fromCelsius(value: 0.0).inCelsius, equals(0.0));
            expect(new Temperature.fromCelsius(value: 0.0).inFahrenheit, equals(32));
            expect(new Temperature.fromCelsius(value: 0.0).inKelvin, equals(273.15));
            expect(new Temperature.fromCelsius(value: 0.0).inRankine, equals(491.67));
            expect(new Temperature.fromCelsius(value: 0.0).inRomer, equals(7.5));
        });

        test('Having -273.15 celsius degress should return 0.0 kelvin and viceversa', () {
            expect(new Temperature.fromCelsius(value: -273.15).inKelvin, equals(0.0));
            expect(new Temperature.fromKelvin(value: 0.0).inCelsius, equals(-273.15));
        });

        test('Having -1.0 and 0.0 fahrenheit degree should match return', () {
            expect(new Temperature.fromFahrenheit(value: -1.0).inCelsius, equals(-18.333333));
            expect(new Temperature.fromFahrenheit(value: -1.0).inFahrenheit, equals(-1.0));
            expect(new Temperature.fromFahrenheit(value: -1.0).inKelvin, equals(254.816667));
            expect(new Temperature.fromFahrenheit(value: -1.0).inRankine, equals(458.67));
            expect(new Temperature.fromFahrenheit(value: -1.0).inRomer, equals(-2.125));

            expect(new Temperature.fromFahrenheit(value: 0.0).inCelsius, equals(-17.777778));
            expect(new Temperature.fromFahrenheit(value: 0.0).inFahrenheit, equals(0.0));
            expect(new Temperature.fromFahrenheit(value: 0.0).inKelvin, equals(255.372222));
            expect(new Temperature.fromFahrenheit(value: 0.0).inRankine, equals(459.67));
            expect(new Temperature.fromFahrenheit(value: 0.0).inRomer, equals(-1.833333));
        });

        test('Having -1.0 and 0.0 kelvin should match return', () {
            expect(new Temperature.fromKelvin(value: -1.0).inCelsius, equals(-273.15));
            expect(new Temperature.fromKelvin(value: -1.0).inFahrenheit, equals(-459.67));
            expect(new Temperature.fromKelvin(value: -1.0).inKelvin, equals(0.0));
            expect(new Temperature.fromKelvin(value: -1.0).inRankine, equals(0.0));
            expect(new Temperature.fromKelvin(value: -1.0).inRomer, equals(-135.90375));

            expect(new Temperature.fromKelvin(value: 0.0).inCelsius, equals(-273.15));
            expect(new Temperature.fromKelvin(value: 0.0).inFahrenheit, equals(-459.67));
            expect(new Temperature.fromKelvin(value: 0.0).inKelvin, equals(0.0));
            expect(new Temperature.fromKelvin(value: 0.0).inRankine, equals(0.0));
            expect(new Temperature.fromKelvin(value: 0.0).inRomer, equals(-135.90375));
        });

        test('Having -1.0, 0.0, 0.5 and 3.7 rankine should match return', () {
            expect(new Temperature.fromRankine(value: -1.0).inCelsius, equals(-273.15));
            expect(new Temperature.fromRankine(value: -1.0).inFahrenheit, equals(-459.67));
            expect(new Temperature.fromRankine(value: -1.0).inKelvin, equals(0.0));
            expect(new Temperature.fromRankine(value: -1.0).inRankine, equals(0.0));
            expect(new Temperature.fromRankine(value: -1.0).inRomer, equals(-135.90375));

            expect(new Temperature.fromRankine(value: 0.0).inCelsius, equals(-273.15));
            expect(new Temperature.fromRankine(value: 0.0).inFahrenheit, equals(-459.67));
            expect(new Temperature.fromRankine(value: 0.0).inKelvin, equals(0.0));
            expect(new Temperature.fromRankine(value: 0.0).inRankine, equals(0.0));
            expect(new Temperature.fromRankine(value: 0.0).inRomer, equals(-135.90375));

            expect(new Temperature.fromRankine(value: 0.5).inCelsius, equals(-272.872222));
            expect(new Temperature.fromRankine(value: 0.5).inFahrenheit, equals(-459.17));
            expect(new Temperature.fromRankine(value: 0.5).inKelvin, equals(0.277778));
            expect(new Temperature.fromRankine(value: 0.5).inRankine, equals(0.5));
            expect(new Temperature.fromRankine(value: 0.5).inRomer, equals(-135.757917));

            expect(new Temperature.fromRankine(value: 3.7).inCelsius, equals(-271.094444));
            expect(new Temperature.fromRankine(value: 3.7).inFahrenheit, equals(-455.97));
            expect(new Temperature.fromRankine(value: 3.7).inKelvin, equals(2.055556));
            expect(new Temperature.fromRankine(value: 3.7).inRankine, equals(3.7));
            expect(new Temperature.fromRankine(value: 3.7).inRomer, equals(-134.824583));
        });
    });

    test('Having -1.0, 0.0, 0.5 and 3.7 rankine should match return', () {
        expect(new Temperature.fromRomer(value: -1.0).inCelsius, equals(-16.190476));
        expect(new Temperature.fromRomer(value: -1.0).inFahrenheit, equals(2.857143));
        expect(new Temperature.fromRomer(value: -1.0).inKelvin, equals(256.959524));
        expect(new Temperature.fromRomer(value: -1.0).inRankine, equals(462.527143));
        expect(new Temperature.fromRomer(value: -1.0).inRomer, equals(-1.0));

        expect(new Temperature.fromRomer(value: 0.0).inCelsius, equals(-14.285714));
        expect(new Temperature.fromRomer(value: 0.0).inFahrenheit, equals(6.285714));
        expect(new Temperature.fromRomer(value: 0.0).inKelvin, equals(258.864286));
        expect(new Temperature.fromRomer(value: 0.0).inRankine, equals(465.955714));
        expect(new Temperature.fromRomer(value: 0.0).inRomer, equals(0.0));

        expect(new Temperature.fromRomer(value: 0.5).inCelsius, equals(-13.333333));
        expect(new Temperature.fromRomer(value: 0.5).inFahrenheit, equals(8));
        expect(new Temperature.fromRomer(value: 0.5).inKelvin, equals(259.816667));
        expect(new Temperature.fromRomer(value: 0.5).inRankine, equals(467.67));
        expect(new Temperature.fromRomer(value: 0.5).inRomer, equals(0.5));

        expect(new Temperature.fromRomer(value: 3.7).inCelsius, equals(-7.238095));
        expect(new Temperature.fromRomer(value: 3.7).inFahrenheit, equals(18.971429));
        expect(new Temperature.fromRomer(value: 3.7).inKelvin, equals(265.911905));
        expect(new Temperature.fromRomer(value: 3.7).inRankine, equals(478.641429));
        expect(new Temperature.fromRomer(value: 3.7).inRomer, equals(3.7));
    });

    group('Temperature comparisson tests', () {
        Temperature temperature20;
        Temperature temperature4;

        setUp(() {
            temperature20 = new Temperature.fromCelsius(value: 20.0);
            temperature4 = new Temperature.fromCelsius(value: 4.0);
        });

        test('Comparing same, should return 0', () {
            expect(temperature20.compareTo(temperature20), equals(0));
        });

        test('4 is shorter than Distance 20', () {
            expect(temperature4.compareTo(temperature20), lessThan(0));
        });

        test('20 is greater than 4', () {
            expect(temperature20.compareTo(temperature4), greaterThan(0));
        });
    });
}