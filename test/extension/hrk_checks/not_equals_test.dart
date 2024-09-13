import 'package:checks/checks.dart';
import 'package:hrk_test_batteries/src/extension/hrk_checks.dart';
import 'package:test/test.dart';

import '../../src/extension/subject.dart';

void main() {
  group('HrkChecks notEquals', () {
    test('Basic', () {
      check(2).notEquals(3);
    });

    test('Equals', () {
      check(2).isRejectedBy((it) => it.notEquals(2), which: ['are equal']);
    });
  });
}
