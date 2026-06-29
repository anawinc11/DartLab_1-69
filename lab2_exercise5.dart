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


}