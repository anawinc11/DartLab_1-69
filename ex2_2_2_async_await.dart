void main() async {
  print("1. Start");

  await Future.delayed(Duration(seconds: 3));
  print("2. Load Complete");

  print("3. End");
}