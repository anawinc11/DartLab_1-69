
String say(String from, String msg, [String? device]) =>'$from says $msg {$device !=null" ? "with a $device"}';
void main(){
  print(say('Bob', 'Howdy?')); 
  print(say('Alice', 'Hi!', 'smartphone'));

}