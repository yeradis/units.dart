import 'package:test/test.dart';

import 'angle_test.dart' as angle;
import 'length_test.dart' as length;
import 'speed_test.dart' as speed;

void main() {
    group('angle', angle.main);
    group('length', length.main);
    group('speed', speed.main);
}