import 'dart:async';

void main() {
  
  final controller = StreamController<String>();
  controller.stream.listen(
    (notification) {
      print("Notification: $notification");
    },
    onDone: () {
      print("Stream closed!");
    },
  );

  controller.add("New message received");
  controller.add("New message received");
  controller.add("New message received");

  controller.close();
}