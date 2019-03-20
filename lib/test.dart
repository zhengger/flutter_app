/*
//Mixins are a way of reusing a class’s code in multiple class hierarchies.
//To implement a mixin, creat a class tnat extends Object and declares on constructors.
//Unless you want your mixin to be usable as a regular class, use the mixin keyword instead of class.

mixin Musical on Person {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print("playing piano");
    } else if (canConduct) {
      print('waving hands');
    } else {
      print('humming to self');
    } 
  }
}

class Person {
  var _name;
  Person(this._name);
  String greet(String who) => 'Hello, $who. I am $_name';
}

class Maestro extends Person with Musical {
    Maestro(String maestroName): super(maestroName) {
    _name = maestroName;
    canConduct = true;
  }
}

void main(List<String> args) {
  var maestro =Maestro("Sharp");
  maestro.entertainMe();
}
*/


/*
//Lexical closures: A closure is a function object that has access to variables in its lexical scope, even when the function is used outside of its original scope which is defined by {}.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

void main () {
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);
  print(add2(4));
  print(add4(8));
}



//override

//implicit interfaces
class Person {
  final _name;
  Person(this._name);
  String greet(String who) => 'Hello, $who. I am $_name';
}

class Impostor implements Person{
  var _age;
  get _name => '';
  Impostor(this._age);
  String greet(String who) => 'Hi $who. Do you know who I am?';
  @override  //overring noSuchMethod
  noSuchMethod(Invocation invocation) => 'Got the ${invocation.memberName} with arguments ${invocation.positionalArguments} 10086';
}
 
 
String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor(8)));
  var im =Impostor(5);
  // im._age = 7;
  print(im._age);
}


//Methods: instance methods, getter and setter, abstrct classes, abstract methods,
//factory constructor
// constant constructor



//Invoking a non-default superclass constructor
class Person {
  String firstName;
  Person.fromJson (Map data) {
    print('in Person');
  }
  
  Person(this.firstName);
  ie...so it's a constructor with an argument.
  Person(String firstName) {
    this.firstName = firstName;
  }

  Person(){
    print("No Argument");
  }
//an unnamed, no-argument constructor
}

class Employee extends Person {
  // Person does not have a default constructor, you must call super.fromJson(data).
  // Employee.fromJson(Map data) : super.fromJson(data) {
  Employee.fromJson(Map data) {
    print('in Employee');
  }
}

main() {
  // var emp = Employee.fromJson({});
  var emp = Person();
  // if (emp is Person) {
  //   // Type check
  //   emp.firstName = 'Bob';
  // }
  (emp as Person).firstName = 'Bob';

}
*/

/*
// factory constructor: Logger 2019-03-19 17:51:18
void main () {
  var lg1 = Logger("hello");
  print(lg1);
  print(Logger._cache);
  print(Logger._internal("world"));
  print(Logger._cache);
  var lg2 = Logger("world");
  print(Logger._cache);
  var lg3 = Logger._internal("!!!");
  print(Logger._cache);
  var lg4 = Logger("!!!");
  print(Logger._cache);
}

String pri (){
  return "It's not the right point";
}


class Logger {
  final String name;
  bool mute =false;
  static final Map<String, Logger> _cache = <String, Logger>{};
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}
*/

/* 2019-03-18 18:13:08
void main() {
  final bar = getValue;
    print(bar);
  const baz = getValue;
  print(baz);
*
Error: Method invocation is not a constant expression.
  const baz = getValue();
 
}


Function getValue () {
  // print("hello world");
  return print;
}
*/

/*
Creating An Http Client

After setting up a Flutter application, the next thing is to create an Http Client using the HttpClass available from dart:io:

So first import dart:io using:

import  'dart:io';

Next add a method for connecting to the RESTful API available from http://localhost:8000/api

getContacts()  async  {
var  httpClient  =  new  HttpClient();
var  uri  =  new  Uri.https('api.github.com',  '/users/1');
var  request  =  await httpClient.getUrl(uri);
var  response  =  await request.close();
var  responseBody  =  await response.transform(UTF8.decoder).join();
return  responseBody;
}
*/
