[![ci][ci-badge]][ci-link]
[![pub package link][pub-badge]][pub-link]
[![codecov link][codecov-badge]][codecov-link]

A library to accumulate required dart test helper and utility codes

## Features

- [`HrkChecks`]
  - [`notEquals()`]

## Getting started

```console
dart pub add dev:hrk_test_batteries
```

## Usage

```dart
import 'package:checks/checks.dart';
import 'package:hrk_test_batteries/hrk_test_batteries.dart';
import 'package:test/test.dart';

void main() {
  test('notEquals', () {
    check(2).notEquals(3);
  });
}
```


[ci-badge]: https://github.com/hrishikesh-kadam/hrk_test_batteries.dart/actions/workflows/ci.yaml/badge.svg
[ci-link]: https://github.com/hrishikesh-kadam/hrk_test_batteries.dart/actions/workflows/ci.yaml
[pub-badge]: https://img.shields.io/pub/v/hrk_test_batteries.svg
[pub-link]: https://pub.dev/packages/hrk_test_batteries
[codecov-badge]: https://codecov.io/gh/hrishikesh-kadam/hrk_test_batteries.dart/branch/main/graph/badge.svg
[codecov-link]: https://codecov.io/gh/hrishikesh-kadam/hrk_test_batteries.dart
[`HrkChecks`]: https://pub.dev/documentation/hrk_test_batteries/latest/hrk_test_batteries/HrkChecks.html
[`notEquals()`]: https://pub.dev/documentation/hrk_test_batteries/latest/hrk_test_batteries/HrkChecks/notEquals.html
