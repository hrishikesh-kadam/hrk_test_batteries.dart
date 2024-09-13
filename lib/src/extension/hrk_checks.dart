import 'package:checks/context.dart';

extension HrkChecks<T> on Subject<T> {
  /// Expects that the value is not equal to [other] according to [operator !=].
  void notEquals(T other) {
    context.expect(() => prefixFirst('not equals ', literal(other)), (actual) {
      if (actual != other) return null;
      return Rejection(which: ['are equal']);
    });
  }
}
