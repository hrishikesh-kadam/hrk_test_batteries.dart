import 'package:checks/checks.dart';
import 'package:hrk_test_batteries/hrk_test_batteries.dart';
import 'package:test/test.dart';

void main() {
  test('notEquals', () {
    check(2).notEquals(3);
  });
}
