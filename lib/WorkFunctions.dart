// ///////////////////
// Функции как объект
// ///////////////////

void showMessage(Function func) {
  func(); // вызываем переданную функцию
}

void helloMessage() => print("Hello!");
void byeMessage() => print("Goodbye!");

void operation(int a, int b, Function func) {
  int result = func(a, b); // вызываем переданную функцию
  print(result);
}

int sum(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;

Function getMessage(int hour) {
  if (hour < 12)
    return morning;
  else
    return evening;
}

void morning() => print("Good morning!");
void evening() => print("Good evening!");

// ///////////////////
// Анонимные и вложенные функции
// ///////////////////

// Анонимные функции похожи на обычные функции за тем исключением, что они не имеют названия. Например:
void exempleAnonimFunc() {
  Function sum = (a, b) => a + b;
  print(sum(4, 5)); // 9
  print(sum(6, 5)); // 11
}
