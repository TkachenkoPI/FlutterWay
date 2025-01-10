class Person {
  String _name; // приватное поле name
  int _age; // приватное поле age
  static int _count = 0;

  Person._create(this._name, this._age) {
    _count += 1;
  }

  factory Person(String name, int age) {
    if (name.length < 2) {
      name = "Undefined";
    }
    if (age < 1 || age > 110) {
      age = 18;
    }
    return Person._create(name, age);
  }

  String get name => _name;
  int get age => _age;

  // сеттер
  set age(int value) {
    if (value > 0 && value < 111) {
      // если age в диапазоне от 1 до 110
      _age = value;
    }
  }

  // вычисляемое свойства
  bool get isChild => _age < 18;

  String presetation() =>
      "Person name is $_name, age $_age, is child: $isChild.";

  // статический метод
  static int getCount() => _count;
  // статический геттер
  static int get count => _count;
}
