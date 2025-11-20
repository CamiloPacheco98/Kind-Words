import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    return await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    return await _client.auth.signUp(email: email, password: password);
  }

  Future<Map<String, dynamic>?> getProfile() async {
    final userId = _client.auth.currentUser?.id;

    final response = await _client
        .from('profiles')
        .select()
        .eq('id', userId!)
        .single();

    return response;
  }

  Future<void> updateProfile(Map<String, dynamic> data) async {
    final userId = _client.auth.currentUser?.id;

    await _client.from('profiles').update(data).eq('id', userId!);
  }

  Future<void> createProfile(Map<String, dynamic> data) async {
    await _client.from('profiles').insert(data);
  }

  Future<void> signOut() async {
    await _client.auth.signOut();
  }
}
