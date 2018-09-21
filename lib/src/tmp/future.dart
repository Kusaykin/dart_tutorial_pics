import 'dart:async';

main(List<String> args) async {
  print('About to fetch data...');
  // 1
  // get('http://some url')
  //   .then((result) => print(result));
  // 2 use await
  var result = await get('http://some url');
  print(result);
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), (){
    return 'Got the data!';
  });
}