import 'dart:async';

void main(){
  StreamController<int> controller = StreamController<int>();

  controller.stream.listen(
    (data) => print("ได้รับข้อมูล : $data"),
    onError : (err) => print("ข้อมูลผิดพลาด : $err"),
    onDone: () => print("สตรีมปิดแล้ว")
  );

  controller.add(10);
  controller.add(20);
  controller.add(30);

  controller.addError("เกิดข้อผิดพลาด!");
  controller.close();
}