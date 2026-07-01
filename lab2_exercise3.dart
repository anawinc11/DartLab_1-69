void main(){
    List<String> subjects = ["math","sci","computer"];
    print("Number of Subject${subjects.length}");
    print("First subject:${subjects[0]}");
    print("Last subject:${subjects.length-1}");
    
    subjects.add("Network");
    print("Update subjects:${subjects}");

    Map<String,int> studentScores = {
      "math" :100,
      "computer":100
    };
    print("score for computer : ${studentScores["computer"]}");

    studentScores["Network"] = 100;
    print("Update studentScores: ${studentScores}");

    print("------วิชาที่มี  a  เป็นส่วนประกอบ-------");
    studentScores.forEach((subject, score) {
      if (subject.toLowerCase().contains('a')) {
        print("$subject: $score คะแนน");
      }
    });
    print("------วิชาที่มากกว่า 50 คะแนน-------");
    studentScores.forEach((subject, score) {
      if (score > 50) {
        print("$subject: $score คะแนน");
      }
    });
}