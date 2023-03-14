import 'package:logic_test_2/logic_test_2.dart';
import 'package:test/test.dart';

void main() {
  test('jump', () {
    expect(jump(0, 3, 4, 2), 'Bertemu di 12');
    expect(jump(0, 2, 5, 3), 'Tidak Bertemu');
    expect(jump(10, 2, 20, 1), 'Bertemu di 30');
  });
}
