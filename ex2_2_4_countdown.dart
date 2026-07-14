import 'dart:async';

Stream<String> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i.toString();
  }
  yield "หมดเวลา!";
}

void main() async {
  await for (var value in countdown(5)) {
    print(value);
  }
}