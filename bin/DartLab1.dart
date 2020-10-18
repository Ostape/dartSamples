void main(List<String> arguments) {
  print('Hello world:!');
  getFullName('name');
  collectionsExample();

  // lambda func
  var func = (nume) => nume * 20;
  print(func(12));

  classExample();
}

// closure function
Function outer(){       // outer func
  var n;
  Function inner(){     // inner func
    n++;
    print(n);
  }
  return inner;
}
void classExample() {
  var car = Car('Orest', 'Shemeliuk', 'Skoda');
  car?.title?.isEmpty; // null check


  var car2 = Car.carWithoutOwner(null);
  // car2.title.isEmpty; // NoSuchMethodError: The getter 'isEmpty' was called on null.
}

void firstAssignExample() {
  int num;
  num ??= 10;
  print(num);

  num ??= 100;
  print(num);
}

void collectionsExample() {
  // collections
  final aListOfStrings = ['one', 'two', 'three', ''];
  final aSetOfStrings = {'one', 'two', 'three'};
  final aMapOfStringsToInts = {
    'one': 1,
    'two': 2,
    'three': 3,
  };

  // arrow function
  var hasEmpty = aListOfStrings.any((s) => s.isEmpty);
  print(hasEmpty);

  // print every element
  aListOfStrings.forEach((element) {
    print(element);
  });

  var newListOfString = aListOfStrings.map((e) => e + ' new word');

  newListOfString.forEach((element) {
    print(element);
  });

  var length2 = newListOfString.elementAt(0).length;
}

// omitted return type     optional arg
getFullName(String name, {String surname = ''}) {
  return name + ' ' + surname;
}

class Car {
  // private var
  String _ownerName;
  String _ownerSurname;

  // public var
  String title;

  // Just a Constructor
  Car(this._ownerName, this._ownerSurname, this.title) {
    // Initialization code goes here.
  }

  // Named constructor
  Car.carWithoutOwner(String title) : this(null, null, title);

  // factory constructor
  // factory Car(String owner) {
  //     // some logic of creating object
  // }

  // getter
  String get ownerFullName =>
      _ownerName + ' ' + _ownerSurname; // read-only non-final property

  // setter
  set age(String ownerSurname) {
    _ownerSurname = ownerSurname;
  }

  // Method.
  void describe() {
    print('something');
  }
}
