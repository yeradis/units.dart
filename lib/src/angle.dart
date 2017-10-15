import 'dart:math';

class Angle implements Comparable<Angle> {
    /*
   * The value of this Angle object in degrees.
   */
    final double _angle;

    ///degrees to radians
    static const double _degree_to_rad = PI / 180.0;

    ///radians to degrees
    static const double _rad_to_degree = 180.0 / PI;

    ///gradians to degrees
    static const double _grad_to_degree = 0.9;
    static const double _degree_to_grad = 1.11111111;

    Angle.fromDegrees({double value : 0.0}): _angle = value;
    Angle.fromRadians({double value: 0.0}): _angle = value * _rad_to_degree;
    Angle.fromGradian({double value: 0.0}): _angle = _grad_to_degree * value;

    double get inDegrees => _returnValue(_angle);
    double get inRadians => _returnValue(_angle * _degree_to_rad);
    double get inGradians => _returnValue(_degree_to_grad * _angle);

    double _returnValue(num value) => double.parse(value.toStringAsFixed(6));

    /**
     * Compares this Angle to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Angle` is shorter than
     * [other], or a positive integer if it is longer.
     *
     * A negative `Angle` is always considered shorter than a positive one.
     *
     */
    int compareTo(Angle other) => _angle.compareTo(other._angle);
}