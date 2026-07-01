void main(){
  String? middleName;
  String city = "Naakhon Sawan";

  int middleNameLength = middleName?.length ?? 0;
  print("middle name lenght : ${middleNameLength}");

  print("city length : ${city.length}");

  print("Middle name before  : ${middleName}");

  middleName ??= "N/A";
  print("Middle name after: ${middleName}");

  middleName ??= "Someting";
  print("middle name after second ${middleName}");
}