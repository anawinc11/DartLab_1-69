Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception("Invalid User ID: ID must more than 0");
  }
  return {
    "id": userId,
    "name": "Anawin",
    "role": "Student",
  };
}
void main() async {
  print("--- Test Case 1: Valid User ID ---");
  try {
    Map<String, dynamic> profile = await fetchProfile(17);
    print("Success: $profile");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Finally block executed Case 1 completed");
  }

  print("--- Test Case 2: Invalid User ID ---");
  try {
    Map<String, dynamic> profile = await fetchProfile(0);
    print("Success: $profile");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Finally block executed Case 2 completed");
  }
}