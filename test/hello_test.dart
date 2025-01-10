import 'package:hello/hello.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('divisors', () {
    expect(divisors(4), 3);
    expect(divisors(5), 2);
    expect(divisors(12), 6);
    expect(divisors(30), 8);
  });
}
