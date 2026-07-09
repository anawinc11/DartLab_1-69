mixin Loggable {
  void log(String msg) {
    print('[LOG] [${DateTime.now()}] $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _list = [];

  void push(T element) {
    _list.add(element);
    log('Push: $element');
  }

  T pop() {
    T element = _list.removeLast();
    log('Pop: $element');
    return element;
  }
}
void main() {
  var stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.pop();
}