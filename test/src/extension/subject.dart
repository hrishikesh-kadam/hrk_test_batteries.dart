import 'package:checks/checks.dart';
import 'package:checks/context.dart';

extension RejectionChecks<T> on Subject<T> {
  // Source: https://github.com/dart-lang/test/blob/7f81deeac294a1120917aeaa35d5b670146c4529/pkgs/checks/test/test_shared.dart
  void isRejectedBy(Condition<T> condition,
      {Iterable<String>? actual, Iterable<String>? which}) {
    late T actualValue;
    var didRunCallback = false;
    final rejection = context.nest<Rejection>(
        () => ['does not meet a condition with a Rejection'], (value) {
      actualValue = value;
      didRunCallback = true;
      final failure = softCheck(value, condition);
      if (failure == null) {
        return Extracted.rejection(which: [
          'was accepted by the condition checking:',
          ...describe(condition)
        ]);
      }
      return Extracted.value(failure.rejection);
    });
    if (didRunCallback) {
      rejection
          .has((r) => r.actual, 'actual')
          .deepEquals(actual ?? literal(actualValue));
    } else {
      rejection
          .has((r) => r.actual, 'actual')
          .context
          .expect(() => ['is left default'], (_) => null);
    }
    if (which == null) {
      rejection.has((r) => r.which, 'which').isNull();
    } else {
      rejection.has((r) => r.which, 'which').isNotNull().deepEquals(which);
    }
  }
}
