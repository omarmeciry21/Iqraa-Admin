import 'package:iqraa_admin/features/login/data/repos/login_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginRepoImpl extends LoginRepo {
  @override
  Future<Map<String, dynamic>> login(String username, String password) async {
    final data = await Supabase.instance.client
        .from('Admins')
        .select()
        .eq('username', username.trim())
        .eq('password', password.trim())
        .single();
    return data;
  }
}
