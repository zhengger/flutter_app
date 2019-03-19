
void main () {
  var lg1 =Logger("hello");
  print(lg1);
  print(Logger._cache);
  print(Logger._internal("world"));
  print(Logger._cache);
  var lg2 = Logger("world");
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