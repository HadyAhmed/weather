import 'dart:io';

void main() {
  asyncExample();
}

/// This is an example for sync programming where each line execute after the previous line finishs
/// it's execution
void syncExample() {
  syncFun1();
  syncFun2();
  syncFun3();
}

void syncFun1() {
  print('Hello World 1');
}

void syncFun2() {
  Duration duration = Duration(seconds: 3);
  sleep(duration);
  print('Hello World 2');
}

void syncFun3() {
  print('Hello World 3');
}

void asyncExample() async {
  asyncFun1();
  String result = await asyncFun2();
  asyncFun3(result);
}

void asyncFun1() {
  print('Hello World 1');
}

Future<String> asyncFun2() async {
  Duration duration = Duration(seconds: 3);
  String results;
  await Future.delayed(duration, () {
    results = 'task 2 data';
    print('Hello World 2');
  });
  return Future.value(results);
}

void asyncFun3(String data) {
  print('Hello World 3 completed with data :$data');
}
