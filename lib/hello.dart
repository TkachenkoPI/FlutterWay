int calculate() {
  return 6 * 7;
}

int divisors(n) {
  var result = 0;

  for (var i = n; i > 0; i--) {
    if (n % i == 0) result++;
  }

  return result;
}

void sayHello({String name = "", int count = -1}) {
  var message = "Hello, $name";

  for (var i = 0; i < count; i++) {
    print(message);
  }
}
