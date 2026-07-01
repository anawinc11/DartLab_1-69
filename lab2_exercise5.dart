void printGrade(int score){
  print("score: ${score}");
  String? grade;
  if (score>=80){
    grade = 'A';
  }
  else if(score >=70){
    grade = 'B';
  }
  else if(score >=60){
    grade = 'C';
  }
  else if(score>=50){
    grade = 'D';
  }
  else{
    grade = 'F';
  }
  print("Grade : ${grade}");
  print("-----");
}
void main(){
  printGrade(85);
  printGrade(72);
  printGrade(50);
  printGrade(40);
  print("number 1 to 10");
  for (int i=1; i<=10; i++){
    print(i);
  }
  print("------");
   var fruits = ['Apple', 'Banana', 'Cherry'];
  print('Fruits:');
  for (var fruit in fruits) {
    print('- $fruit');
  }
}