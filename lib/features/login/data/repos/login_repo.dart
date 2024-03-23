abstract class LoginRepo {
  Future<Map<String, dynamic>> login(String username, String password);
}
