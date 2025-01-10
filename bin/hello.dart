import 'package:hello/Singleton.dart';
import 'package:hello/hello.dart' as hello;
import 'package:hello/WorkFunctions.dart' as myFunc;
import 'package:hello/Person.dart';
import 'package:hello/user.dart';

void main(List<String> arguments) {
  print('Hello world: ${hello.calculate()}!');

  header("functionExemple");
  functionExemple();

  header("personExemple");
  personExemple();

  header("singletonExemple");
  singletonExemple();
}

void header(String name) {
  print("");
  print("//////////////////////////////////////////////");
  print("// $name");
  print("//////////////////////////////////////////////");
  print("");
}

void singletonExemple() {
  User user = User.login("Vasiliy");
  User user2 = User.login("Artem");

  user2.info();
  user.info();

  user.logout();

  user2.info();
  user.info();
}

void functionExemple() {
  print(myFunc.sum(2, 5)); // 7

  hello.sayHello(name: "Mosy", count: 2);

  myFunc.showMessage(myFunc.helloMessage);
  myFunc.showMessage(myFunc.byeMessage);

  myFunc.operation(5, 4, myFunc.sum); // 9
  myFunc.operation(5, 4, myFunc.subtract); // 1
  myFunc.operation(5, 4, myFunc.multiply); // 20

  Function message = myFunc.getMessage(11);
  message();
  message = myFunc.getMessage(15);
  message();
}

void personExemple() {
  Person Tom = Person("T", 30);

  print("Количество людей: ${Person.count}");

  Person Bob = Person("Tom", 30);

  Tom.age = 115;

  print(Tom.presetation());

  print("Количество людей: ${Person.getCount()}");
}
