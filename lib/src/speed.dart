import 'dart:core';

class Speed implements Comparable<Speed> {
    ///meters per second to:
    static const double _msec_to_kmh = 3.6;
    static const double _msec_to_mih = 2.23693629;
    static const double _msec_to_knot = 1.94384449;

    ///other measurements to meters per second
    static const double _kmh_to_msec = 0.27777777777778;
    static const double _mih_to_msec = 0.44704;
    static const double _knot_to_msec = 0.514444444;

    /*
   * The value of this Speed object in m/s = meter per second .
   */
    final double _speed;

    const Speed.fromMeterPerSecond({double value : 0.0})   : _speed = value;
    const Speed.fromKilometerPerHour({double value : 0.0}) : _speed = _kmh_to_msec * value;
    const Speed.fromMilePerHour({double value: 0.0})       : _speed = _mih_to_msec * value;
    const Speed.fromKnot({double value: 0.0})              : _speed = _knot_to_msec * value;

    double get inMeterPerSecond   => _returnValueOrZero(_speed);
    double get inKilometerPerHour => _returnValueOrZero(_msec_to_kmh * _speed);
    double get inMilePerHour      => _returnValueOrZero(_msec_to_mih * _speed);
    double get inKnot             => _returnValueOrZero(_msec_to_knot * _speed);

    double _returnValueOrZero(double value) => value >= 0.0 ? double.parse(value.toStringAsFixed(6)) : 0.0;

    /**
     * Compares this Speed to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Speed` is shorter than
     * [other], or a positive integer if it is longer.
     *
     * A negative `Speed` is always considered shorter than a positive one.
     *
     */
    int compareTo(Speed other) => _speed.compareTo(other._speed);
}