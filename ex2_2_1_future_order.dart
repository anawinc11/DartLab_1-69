void main() {
  print("1. Start");

  Future.delayed(Duration(seconds: 3)).then((_) {
    print("2. Load Complete");
  });

  print("3. End");
}