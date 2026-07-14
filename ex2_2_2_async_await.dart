void main() {
  print("1. เริ่ม");
  runDelayedTask();
  print("3. จบ");
}
void runDelayedTask() async {
  await Future.delayed(Duration(seconds: 3));
  print("2. โหลดเสร็จ");
}